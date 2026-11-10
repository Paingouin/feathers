//! Loading packs: the sandbox, error reporting, and the scripting hooks.

use std::fs;
use std::path::{Path, PathBuf};
use std::rc::Rc;
use std::sync::atomic::{AtomicUsize, Ordering};

use feathers::Error;
use feathers::game::{Command, Event, Game, View, ViewNode};
use feathers::pack::{self, LuaScripts, Pack};
use feathers::world::plain_text;

/// A pack written to a temporary directory, removed when dropped.
struct Fixture(PathBuf);

impl Fixture {
    fn new(files: &[(&str, &str)]) -> Self {
        static NEXT: AtomicUsize = AtomicUsize::new(0);
        let dir = std::env::temp_dir().join(format!(
            "feathers-pack-{}-{}",
            std::process::id(),
            NEXT.fetch_add(1, Ordering::Relaxed)
        ));
        for (name, content) in files {
            let path = dir.join(name);
            fs::create_dir_all(path.parent().unwrap()).unwrap();
            fs::write(path, content).unwrap();
        }
        Self(dir)
    }

    fn path(&self) -> &Path {
        &self.0
    }
}

impl Drop for Fixture {
    fn drop(&mut self) {
        let _ = fs::remove_dir_all(&self.0);
    }
}

const MANIFEST: &str = r#"return { id = "t", name = "Test", api = 1, start = "a" }"#;
const REGION: &str = r#"region { id = "r", name = "R", description = "A region." }"#;

fn pack_with(content: &str) -> Fixture {
    Fixture::new(&[
        ("pack.lua", MANIFEST),
        ("world.lua", &format!("{REGION}\n{content}")),
    ])
}

fn problems(fixture: &Fixture) -> Vec<String> {
    match pack::load(fixture.path()) {
        Err(Error::Pack { problems, .. }) => problems,
        Err(other) => panic!("expected pack problems, got {other}"),
        Ok(_) => panic!("expected the pack to be rejected"),
    }
}

/// Asserts exactly one problem was reported and that it mentions every given fragment.
fn assert_problem(content: &str, fragments: &[&str]) {
    let found = problems(&pack_with(content));
    assert_eq!(found.len(), 1, "{found:#?}");
    for fragment in fragments {
        assert!(
            found[0].contains(fragment),
            "missing {fragment:?} in {:?}",
            found[0]
        );
    }
}

fn space(id: &str, rest: &str) -> String {
    format!(r#"space {{ id = "{id}", region = "r", name = "{id}", description = "d", {rest} }}"#)
}

fn play(fixture: &Fixture) -> (Game<LuaScripts>, Vec<Event>) {
    let Pack { world, scripts, .. } = pack::load(fixture.path()).unwrap_or_else(|e| panic!("{e}"));
    let mut game = Game::new(Rc::new(world), scripts);
    let events = game.begin();
    (game, events)
}

fn said(events: &[Event]) -> Vec<String> {
    events
        .iter()
        .filter_map(|event| match event {
            Event::Said(spans) => Some(plain_text(spans)),
            _ => None,
        })
        .collect()
}

fn thing<'a>(view: &'a View, name: &str) -> &'a ViewNode {
    view.space
        .children
        .iter()
        .find(|node| plain_text(&node.name) == name)
        .unwrap_or_else(|| panic!("no thing named {name}"))
}

fn act(game: &mut Game<LuaScripts>, node: &ViewNode, label: &str) -> Vec<Event> {
    let action = node
        .actions
        .iter()
        .find(|a| a.label == label)
        .unwrap_or_else(|| panic!("no action {label} on {}", node.key));
    game.apply(Command::Act {
        key: node.key.clone(),
        action: action.id,
    })
}

#[test]
fn a_minimal_pack_loads() {
    let fixture = pack_with(&space("a", ""));
    let pack = pack::load(fixture.path()).unwrap();
    assert_eq!(pack.world.meta.name, "Test");
    assert_eq!(pack.report.stats.spaces, 1);
    assert!(
        pack.report.warnings.is_empty(),
        "{:?}",
        pack.report.warnings
    );
}

#[test]
fn the_sandbox_has_no_files_processes_modules_or_dice() {
    for forbidden in [
        "io.open('x')",
        "os.execute('true')",
        "require('os')",
        "dofile('x')",
        "load('return 1')()",
        "debug.getinfo(1)",
        "local n = math.random(6)",
        "string.dump(print)",
    ] {
        let found = problems(&pack_with(&format!("{}\n{forbidden}", space("a", ""))));
        assert_eq!(found.len(), 1, "{forbidden}: {found:#?}");
        assert!(
            found[0].starts_with("world.lua:3:"),
            "{forbidden}: {}",
            found[0]
        );
        assert!(found[0].contains("nil value"), "{forbidden}: {}", found[0]);
    }
}

#[test]
fn include_cannot_leave_the_pack() {
    let outside = Fixture::new(&[("secret.lua", "return 42")]);
    let name = outside
        .path()
        .file_name()
        .unwrap()
        .to_str()
        .unwrap()
        .to_owned();
    for escape in [
        format!("../{name}/secret"),
        format!("{}/secret", outside.path().display()),
        "sub/../../x".to_owned(),
        String::new(),
    ] {
        let found = problems(&pack_with(&format!(
            "{}\ninclude(\"{escape}\")",
            space("a", "")
        )));
        assert_eq!(found.len(), 1, "{found:#?}");
        assert!(found[0].contains("stay inside the pack"), "{}", found[0]);
    }
}

#[cfg(unix)]
#[test]
fn include_does_not_follow_symlinks_out_of_the_pack() {
    let outside = Fixture::new(&[("secret.lua", "return 42")]);
    let fixture = pack_with(&space("a", ""));
    // Not named *.lua inside the pack's own tree, so only an explicit include reaches it.
    fs::create_dir(fixture.path().join(".hidden")).unwrap();
    std::os::unix::fs::symlink(
        outside.path().join("secret.lua"),
        fixture.path().join(".hidden/link.lua"),
    )
    .unwrap();
    fs::write(fixture.path().join("zz.lua"), "include('.hidden/link')").unwrap();
    let found = problems(&fixture);
    assert!(found[0].contains("resolves outside the pack"), "{found:#?}");
}

#[test]
fn include_shares_values_and_runs_a_file_once() {
    let fixture = Fixture::new(&[
        ("pack.lua", MANIFEST),
        (
            "lib/names.lua",
            "count = (count or 0) + 1\nreturn { hall = 'The Hall' }",
        ),
        (
            "world.lua",
            &format!(
                "{REGION}\nlocal names = include('lib/names')\ninclude('lib/names.lua')\n\
                 space {{ id = 'a', region = 'r', name = names.hall, description = 'Loaded ' .. count .. ' time.' }}"
            ),
        ),
    ]);
    let (game, _) = play(&fixture);
    let view = game.view();
    assert_eq!(plain_text(&view.space.name), "The Hall");
    assert_eq!(plain_text(&view.space.description), "Loaded 1 time.");
}

#[test]
fn mistakes_are_reported_with_file_line_and_place() {
    assert_problem(
        &space("a", r#"exits = { { to = "nowhere" } }"#),
        &["space 'a'", "'nowhere'", "does not exist"],
    );
    assert_problem(
        &format!("{}\n{}", space("a", ""), space("a", "")),
        &[
            "world.lua:3",
            "space 'a'",
            "already declared at world.lua:2",
        ],
    );
    assert_problem(&space("b", ""), &["start space 'a' does not exist"]);
    assert_problem(
        &space(
            "a",
            r#"exits = { { to = "a", requires = item "ghost", locked = "no" } }"#,
        ),
        &["item 'ghost'", "does not exist"],
    );
    assert_problem(
        &space("a", r#"actions = { { "Take", give "ghost" } }"#),
        &["a:", "item 'ghost'"],
    );
    assert_problem(
        r#"space { id = "a", region = "elsewhere", name = "a", description = "d" }"#,
        &["region 'elsewhere' does not exist"],
    );
    assert_problem(
        &space(
            "a",
            r#"things = { { name = "x", description = "a {nope}b{/}" } }"#,
        ),
        &[
            "world.lua:2",
            "space 'a'",
            "thing 'x'",
            "unknown markup tag '{nope}'",
        ],
    );
    assert_problem(
        &space("a", r#"things = { { name = "x", descripton = "typo" } }"#),
        &["world.lua:2", "thing 'x'", "unknown field 'descripton'"],
    );
    assert_problem(
        &space("a", r#"actions = { { "Go", go "nowhere" } }"#),
        &["goes to 'nowhere'"],
    );
    assert_problem(
        &space("a", r#"actions = { { "Boom", fx "explode" } }"#),
        &["action 'Boom'", "unknown fx 'explode'"],
    );
    assert_problem(
        &space("a", r#"variants = { { description = "always" } }"#),
        &["variant 1", "missing 'when'"],
    );
    // A file with a syntax error declares nothing, so what it would have declared is missing too.
    let found = problems(&pack_with(&format!("{}\nlocal x = = 1", space("a", ""))));
    assert!(found[0].starts_with("world.lua:3:"), "{found:#?}");
}

#[test]
fn every_problem_is_reported_at_once() {
    let content = format!(
        "{}\n{}",
        space("a", r#"exits = { { to = "x" }, { to = "y" } }, bogus = 1"#),
        space("b", r#"things = { { description = "nameless" } }"#),
    );
    assert_eq!(problems(&pack_with(&content)).len(), 4);
}

#[test]
fn a_bad_manifest_is_explained() {
    let load = |manifest: &str| problems(&Fixture::new(&[("pack.lua", manifest)])).join("\n");
    assert!(load("return 3").contains("must return a table"));
    assert!(load(r#"return { id = "t", start = "a" }"#).contains("missing 'api'"));
    assert!(load(r#"return { id = "t", api = 99, start = "a" }"#).contains("wants api 99"));
    assert!(
        load(r#"return { id = "../t", api = 1, start = "a" }"#).contains("'id' may only contain")
    );
    assert!(
        load(r##"return { id = "t", api = 1, start = "a", theme = { gold = "#zz" } }"##)
            .contains("theme: 'gold'")
    );
    assert!(matches!(
        pack::load(Path::new("/nonexistent/pack")),
        Err(Error::Pack { .. })
    ));
}

#[test]
fn warnings_point_at_likely_mistakes_without_failing_the_load() {
    let content = format!(
        "{}\n{}",
        space(
            "a",
            r#"things = { { name = "bare", icon = "wide" } },
               exits = { { to = "a", requires = flag "never_set", hidden = true } },
               ambience = { rain { glyphs = "日" } }"#
        ),
        space("island", ""),
    );
    let fixture = pack_with(&content);
    let warnings = pack::load(fixture.path())
        .unwrap()
        .report
        .warnings
        .join("\n");
    for expected in [
        "flag 'never_set' is tested but never set",
        "space 'island' cannot be reached",
        "a/bare: no description",
        "icon 'wide'",
        "not one cell wide: 日",
    ] {
        assert!(
            warnings.contains(expected),
            "missing {expected:?} in:\n{warnings}"
        );
    }
}

#[test]
fn blueprints_stamp_independent_copies() {
    let fixture = Fixture::new(&[
        ("pack.lua", MANIFEST),
        (
            "blueprints/candle.lua",
            r#"candle = blueprint { name = "a candle", description = "Lit.",
                 things = { { name = "wax", description = "Warm." } },
                 actions = { { "Blow", say "Out." } } }"#,
        ),
        (
            // Sorts before blueprints/, yet blueprints are loaded first.
            "areas/a.lua",
            &format!(
                "{REGION}\n{}",
                space(
                    "a",
                    r#"things = { candle(), candle { name = "a black candle" }, candle() }"#
                )
            ),
        ),
    ]);
    let (mut game, _) = play(&fixture);
    let view = game.view();
    let names: Vec<String> = view
        .space
        .children
        .iter()
        .map(|n| plain_text(&n.name))
        .collect();
    assert_eq!(names, ["a candle", "a black candle", "a candle"]);
    let keys: Vec<&str> = view.space.children.iter().map(|n| n.key.as_str()).collect();
    assert_eq!(
        keys,
        ["a/a candle", "a/a black candle", "a/a candle#2"],
        "identical siblings get distinct keys"
    );
    assert_eq!(plain_text(&view.space.children[1].children[0].name), "wax");
    assert_eq!(
        said(&act(&mut game, &view.space.children[2], "Blow")),
        ["Out."]
    );
}

#[test]
fn script_hooks_drive_text_conditions_and_effects() {
    let content = format!(
        "item {{ id = 'key', name = 'a key', description = 'Small.' }}\n{}\n{}",
        space(
            "a",
            r#"on_enter = function(ctx)
                 if not ctx:visited("a") then ctx:say("First time in " .. ctx.here .. ".") end
               end,
               things = {
                 { name = "a sign", key = "sign",
                   description = function(ctx) return ctx:has("key") and "It says {b}yes{/}." or "It says no." end,
                   actions = {
                     { "Search", function(ctx)
                         ctx:give("key"); ctx:set("searched")
                         ctx:say(ctx:has("key") and "Found it." or "Nothing.")
                       end },
                     { "Leave", when = function(ctx) return ctx:flag("searched") end, go "b" },
                     { "Break", function(ctx) error("oops") end },
                   } },
               }"#
        ),
        space("b", r#"exits = { { to = "a" } }"#),
    );
    let (mut game, events) = play(&pack_with(&content));
    assert_eq!(said(&events), ["First time in a."]);

    let view = game.view();
    let sign = thing(&view, "a sign");
    assert_eq!(plain_text(&sign.description), "It says no.");
    let labels: Vec<&str> = sign.actions.iter().map(|a| a.label.as_str()).collect();
    assert_eq!(
        labels,
        ["Search", "Break"],
        "the scripted condition hides Leave"
    );

    let events = act(&mut game, sign, "Search");
    assert_eq!(said(&events), ["Found it."], "a hook sees its own writes");
    assert!(events.iter().any(|e| matches!(e, Event::Gained(_))));

    let view = game.view();
    let sign = thing(&view, "a sign");
    assert_eq!(plain_text(&sign.description), "It says yes.");
    assert!(
        sign.description.iter().any(|span| span.style.bold),
        "scripted text is marked up too"
    );

    let failure = said(&act(&mut game, sign, "Break"));
    assert!(
        failure[0].contains("script error") && failure[0].contains("oops"),
        "{failure:?}"
    );

    act(&mut game, sign, "Leave");
    assert_eq!(plain_text(&game.view().space.name), "b");
    let back = game.view().exits[0].clone();
    assert!(
        said(&act(&mut game, &back, "Go there")).is_empty(),
        "on_enter saw the earlier visit"
    );
}

#[test]
fn lua_can_compose_content_by_fixed_rules() {
    // No dice needed: a loop builds a long corridor, the same for everyone.
    let content = r#"
        for i = 1, 2000 do
          space { id = (i == 1) and "a" or ("room" .. i), region = "r",
                  name = "Room " .. i, description = "Room number " .. i .. ".",
                  exits = { { to = (i < 2000) and ("room" .. (i + 1)) or "a" } } }
        end"#;
    let fixture = pack_with(content);
    let started = std::time::Instant::now();
    let pack = pack::load(fixture.path()).unwrap();
    assert_eq!(pack.report.stats.spaces, 2000);
    assert!(pack.report.warnings.is_empty());
    assert!(
        started.elapsed().as_secs() < 5,
        "loading took {:?}",
        started.elapsed()
    );
}

#[test]
fn packs_are_discovered_by_their_manifest() {
    let root = Fixture::new(&[
        (
            "zeta/pack.lua",
            r#"return { id = "z", name = "Zeta", api = 1, start = "a", description = "Last." }"#,
        ),
        (
            "alpha/pack.lua",
            r#"return { id = "a", name = "Alpha", api = 1, start = "a" }"#,
        ),
        ("broken/pack.lua", "return"),
        ("notes/readme.txt", "not a pack"),
    ]);
    let found = pack::discover(root.path());
    let names: Vec<&str> = found.iter().map(|p| p.meta.name.as_str()).collect();
    assert_eq!(names, ["Alpha", "Zeta"]);
    assert_eq!(found[1].meta.description, "Last.");
    assert!(pack::discover(Path::new("/nonexistent")).is_empty());
}
