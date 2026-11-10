use std::collections::BTreeMap;
use std::rc::Rc;

use super::*;
use crate::world::{
    HookId, Item, Labels, Look, Meta, Region, RegionId, Variant, plain_text,
};

fn node(name: &str, description: &str) -> Node {
    Node {
        name: Text::plain(name),
        description: Text::plain(description),
        icon: None,
        actions: Vec::new(),
        things: Vec::new(),
        variants: Vec::new(),
    }
}

fn action(label: &str, effects: Vec<Effect>) -> Action {
    Action {
        label: label.into(),
        when: Condition::Always,
        once: false,
        effects,
    }
}

fn thing(key: &str, node: Node) -> Thing {
    Thing {
        key: key.into(),
        node,
        visible_if: Condition::Always,
        wonder: false,
    }
}

fn space(id: &str, node: Node, exits: Vec<Exit>) -> Space {
    Space {
        id: SpaceId::new(id),
        region: RegionId::new("vale"),
        node,
        exits,
        secret: false,
        wonder: false,
        on_enter: Vec::new(),
        look: Look::default(),
    }
}

fn exit(to: &str) -> Exit {
    Exit {
        to: SpaceId::new(to),
        label: None,
        description: None,
        requires: Condition::Always,
        locked: Locked::Hidden,
    }
}

fn flag(name: &str) -> Condition {
    Condition::Flag(name.into())
}

fn say(text: &str) -> Effect {
    Effect::Say(Text::plain(text))
}

/// A tavern with a bed and a barman, a cellar behind a key, a hidden vault, and a square outside.
fn world() -> World {
    let coin = ItemId::new("coin");

    let mut bed = node("the bed", "A bed.");
    bed.variants.push(Variant {
        when: flag("bed_broken"),
        name: Some(Text::plain("a pile of planks")),
        description: None,
        actions: Some(vec![action("Apologise", vec![say("Too late.")])]),
        things: None,
    });
    bed.actions = vec![
        action("Break it", vec![Effect::SetFlag("bed_broken".into())]),
        Action {
            once: true,
            ..action(
                "Look underneath",
                vec![Effect::GiveItem(coin.clone()), say("A coin!")],
            )
        },
    ];

    let mut barman = node("the barman", "He polishes a mug.");
    barman.variants.push(Variant {
        when: flag("bed_broken"),
        name: None,
        description: Some(Text::plain("He polishes a mug at you.")),
        actions: None,
        things: None,
    });
    barman.actions = vec![
        Action {
            when: flag("bed_broken"),
            ..action("Talk", vec![say("That was my grandmother's bed.")])
        },
        action("Talk", vec![say("Two coppers.")]),
    ];
    barman.things.push(Thing {
        visible_if: flag("bed_broken"),
        wonder: true,
        ..thing("tavern/the barman/his glare", node("his glare", "Legendary."))
    });

    let mut tavern = node("The Tavern", "It smells of soup.");
    tavern.things = vec![thing("tavern/the bed", bed), thing("tavern/the barman", barman)];

    let mut vault = space("vault", node("The Vault", "Hidden."), vec![exit("tavern")]);
    vault.secret = true;

    let mut square = space("square", node("The Square", "Mud."), vec![exit("tavern")]);
    square.on_enter = vec![Effect::Script(HookId(0))];

    let spaces = [
        space(
            "tavern",
            tavern,
            vec![
                exit("square"),
                Exit {
                    requires: Condition::Item(coin.clone()),
                    locked: Locked::Shown(Text::plain("it wants a coin")),
                    ..exit("cellar")
                },
                Exit {
                    requires: flag("bed_broken"),
                    ..exit("vault")
                },
            ],
        ),
        space("cellar", node("The Cellar", "Dark."), vec![]),
        vault,
        square,
    ];

    World {
        meta: Meta {
            id: "test".into(),
            ..Meta::default()
        },
        start: SpaceId::new("tavern"),
        labels: Labels::default(),
        trackers: vec![
            Tracker {
                name: "Secrets".into(),
                counts: TrackerKind::Secrets,
            },
            Tracker {
                name: "Wonders".into(),
                counts: TrackerKind::Wonders,
            },
        ],
        regions: vec![Region {
            id: RegionId::new("vale"),
            name: Text::plain("The Vale"),
            description: Text::plain("Green."),
            look: Look::default(),
        }],
        spaces: spaces.into_iter().map(|s| (s.id.clone(), s)).collect(),
        items: BTreeMap::from([(
            coin.clone(),
            Item {
                id: coin,
                node: node("a coin", "Round."),
            },
        )]),
    }
}

/// Scripts whose only hook greets the player on a first visit to the square.
struct Greeter;

impl Scripts for Greeter {
    fn condition(&self, _: HookId, _: &State) -> bool {
        false
    }

    fn effects(&self, _: HookId, state: &State) -> Vec<Effect> {
        if state.visited.contains(&SpaceId::new("square")) {
            Vec::new()
        } else {
            vec![say("A goose regards you.")]
        }
    }

    fn text(&self, _: HookId, _: &State) -> Vec<Span> {
        Vec::new()
    }
}

fn game() -> Game<Greeter> {
    let mut game = Game::new(Rc::new(world()), Greeter);
    game.begin();
    game
}

fn names(nodes: &[ViewNode]) -> Vec<String> {
    nodes.iter().map(|n| plain_text(&n.name)).collect()
}

fn child<'a>(view: &'a View, name: &str) -> &'a ViewNode {
    view.space
        .children
        .iter()
        .find(|n| plain_text(&n.name) == name)
        .unwrap_or_else(|| panic!("no thing named {name}"))
}

fn act(game: &mut Game<Greeter>, node: &ViewNode, label: &str) -> Vec<Event> {
    let action = node
        .actions
        .iter()
        .find(|a| a.label == label)
        .unwrap_or_else(|| panic!("no action {label}"));
    game.apply(Command::Act {
        key: node.key.clone(),
        action: action.id,
    })
}

fn said(events: &[Event]) -> Vec<String> {
    events
        .iter()
        .filter_map(|e| match e {
            Event::Said(spans) => Some(plain_text(spans)),
            _ => None,
        })
        .collect()
}

#[test]
fn starts_in_the_start_space_and_marks_it_visited() {
    let game = game();
    let view = game.view();
    assert_eq!(plain_text(&view.space.name), "The Tavern");
    assert_eq!(plain_text(&view.region), "The Vale");
    assert!(game.state().visited.contains(&SpaceId::new("tavern")));
}

#[test]
fn exits_are_named_after_their_destination_and_respect_locks() {
    let view = game().view();
    assert_eq!(names(&view.exits), ["The Square", "The Cellar"]);
    let cellar = &view.exits[1];
    assert_eq!(plain_text(cellar.locked.as_ref().unwrap()), "it wants a coin");
    assert!(cellar.actions.is_empty());
    assert_eq!(view.exits[0].actions[0].label, "Go there");
    assert_eq!(plain_text(&view.exits[0].description), "Mud.");
}

#[test]
fn a_locked_exit_cannot_be_taken_and_a_hidden_one_cannot_be_addressed() {
    let mut game = game();
    let cellar = game.view().exits[1].key.clone();
    assert!(game.apply(Command::Act { key: cellar, action: 0 }).is_empty());
    let hidden = "tavern>vault#2".to_owned();
    assert!(game.apply(Command::Act { key: hidden, action: 0 }).is_empty());
    assert_eq!(game.state().location, SpaceId::new("tavern"));
}

#[test]
fn an_item_unlocks_a_shown_exit() {
    let mut game = game();
    let bed = child(&game.view(), "the bed").clone();
    let events = act(&mut game, &bed, "Look underneath");
    assert!(matches!(&events[0], Event::Gained(name) if plain_text(name) == "a coin"));
    assert_eq!(said(&events), ["A coin!"]);
    assert_eq!(names(&game.view().items), ["a coin"]);

    let cellar = game.view().exits[1].clone();
    assert!(cellar.locked.is_none());
    let events = act(&mut game, &cellar, "Go there");
    assert_eq!(
        events,
        [Event::Moved {
            from: SpaceId::new("tavern"),
            to: SpaceId::new("cellar")
        }]
    );
    assert_eq!(plain_text(&game.view().space.name), "The Cellar");
}

#[test]
fn a_once_action_disappears_after_use() {
    let mut game = game();
    let bed = child(&game.view(), "the bed").clone();
    act(&mut game, &bed, "Look underneath");
    let labels: Vec<_> = child(&game.view(), "the bed")
        .actions
        .iter()
        .map(|a| a.label.clone())
        .collect();
    assert_eq!(labels, ["Break it"]);
    // Replaying the stale command does nothing.
    assert!(act(&mut game, &bed, "Look underneath").is_empty());
    assert_eq!(game.state().inventory.len(), 1);
}

#[test]
fn an_action_on_one_thing_changes_another() {
    let mut game = game();
    let before = game.view();
    let barman = child(&before, "the barman");
    assert_eq!(plain_text(&barman.description), "He polishes a mug.");
    assert!(barman.children.is_empty());
    assert_eq!(said(&act(&mut game, barman, "Talk")), ["Two coppers."]);

    act(&mut game, child(&before, "the bed"), "Break it");

    let after = game.view();
    let barman = child(&after, "the barman");
    assert_eq!(plain_text(&barman.description), "He polishes a mug at you.");
    assert_eq!(names(&barman.children), ["his glare"]);
    assert_eq!(barman.actions.len(), 1, "same-label actions collapse to one");
    assert_eq!(
        said(&act(&mut game, barman, "Talk")),
        ["That was my grandmother's bed."]
    );
}

#[test]
fn a_variant_replaces_name_and_actions_but_keeps_identity() {
    let mut game = game();
    let bed = child(&game.view(), "the bed").clone();
    act(&mut game, &bed, "Break it");
    let view = game.view();
    let planks = child(&view, "a pile of planks");
    assert_eq!(planks.key, bed.key);
    assert_eq!(plain_text(&planks.description), "A bed.");
    assert_eq!(planks.actions[0].label, "Apologise");
}

#[test]
fn a_flag_reveals_a_hidden_exit_and_entering_a_secret_is_a_discovery() {
    let mut game = game();
    let bed = child(&game.view(), "the bed").clone();
    act(&mut game, &bed, "Break it");
    let view = game.view();
    assert_eq!(names(&view.exits), ["The Square", "The Cellar", "The Vault"]);
    let events = act(&mut game, &view.exits[2], "Go there");
    assert!(events.contains(&Event::Discovered {
        what: Discovery::Secret,
        name: vec![Span::plain("The Vault")]
    }));
    assert_eq!(game.view().trackers[0].found, 1);

    // Coming back is not a second discovery.
    let back = game.view().exits[0].clone();
    act(&mut game, &back, "Go there");
    let view = game.view();
    let events = act(&mut game, &view.exits[2], "Go there");
    assert_eq!(events.len(), 1);
}

#[test]
fn on_enter_can_tell_a_first_visit_from_a_return() {
    let mut game = game();
    let to_square = game.view().exits[0].clone();
    assert_eq!(
        said(&act(&mut game, &to_square, "Go there")),
        ["A goose regards you."]
    );
    let back = game.view().exits[0].clone();
    act(&mut game, &back, "Go there");
    assert!(said(&act(&mut game, &to_square, "Go there")).is_empty());
}

#[test]
fn looking_at_a_wonder_discovers_it_once() {
    let mut game = game();
    let bed = child(&game.view(), "the bed").clone();
    act(&mut game, &bed, "Break it");
    let view = game.view();
    let glare = child(&view, "the barman").children[0].key.clone();
    let wonders = |game: &Game<Greeter>| {
        let t = &game.view().trackers[1];
        (t.found, t.total)
    };
    assert_eq!(wonders(&game), (0, 1));
    let events = game.apply(Command::Look { key: glare.clone() });
    assert!(matches!(
        &events[..],
        [Event::Discovered {
            what: Discovery::Wonder,
            ..
        }]
    ));
    assert!(game.apply(Command::Look { key: glare }).is_empty());
    assert_eq!(wonders(&game), (1, 1));
}

#[test]
fn the_journal_lists_only_visited_spaces() {
    let mut game = game();
    let journal = game.journal();
    assert_eq!(journal.regions.len(), 1);
    assert_eq!(journal.regions[0].spaces.len(), 1);
    assert!(journal.regions[0].spaces[0].here);

    let to_square = game.view().exits[0].clone();
    act(&mut game, &to_square, "Go there");
    let journal = game.journal();
    let visited: Vec<_> = journal.regions[0]
        .spaces
        .iter()
        .map(|s| (plain_text(&s.name), s.here))
        .collect();
    assert_eq!(
        visited,
        [("The Square".into(), true), ("The Tavern".into(), false)]
    );
}

#[test]
fn saves_round_trip_and_survive_a_changed_pack() {
    let mut game = game();
    let bed = child(&game.view(), "the bed").clone();
    act(&mut game, &bed, "Look underneath");
    let cellar = game.view().exits[1].clone();
    act(&mut game, &cellar, "Go there");

    let dir = std::env::temp_dir().join(format!("feathers-test-{}", std::process::id()));
    let path = save::path(&dir, game.world());
    save::write(&path, game.world(), game.state()).unwrap();
    assert_eq!(
        save::read(&path, game.world()).unwrap().as_ref(),
        Some(game.state())
    );

    // The pack loses its cellar and its coin: the save still loads, back at the start.
    let mut smaller = world();
    smaller.spaces.remove(&SpaceId::new("cellar"));
    smaller.items.clear();
    let state = save::read(&path, &smaller).unwrap().unwrap();
    assert_eq!(state.location, smaller.start);
    assert!(state.inventory.is_empty());
    assert!(!state.visited.contains(&SpaceId::new("cellar")));

    // A save from another pack is refused rather than misapplied.
    let mut other = world();
    other.meta.id = "other".into();
    assert!(save::read(&path, &other).is_err());
    assert!(save::read(&dir.join("missing.json"), &smaller).unwrap().is_none());
    std::fs::remove_dir_all(dir).unwrap();
}

fn look(game: &mut Game<Greeter>, key: &str) {
    game.apply(Command::Look { key: key.into() });
}

#[test]
fn seen_marks_follow_what_the_player_has_looked_at() {
    let mut game = game();
    assert_eq!(game.view().space.seen, Seen::New);

    look(&mut game, "tavern");
    assert_eq!(game.view().space.seen, Seen::Partial, "the things inside are still new");

    look(&mut game, "tavern/the bed");
    look(&mut game, "tavern/the barman");
    let view = game.view();
    assert_eq!(child(&view, "the bed").seen, Seen::Complete);
    assert_eq!(view.space.seen, Seen::Complete);
    let journal = game.journal();
    assert_eq!((journal.seen, journal.total), (3, 3));
}

#[test]
fn changed_content_counts_as_new_again() {
    let mut game = game();
    for key in ["tavern", "tavern/the bed", "tavern/the barman"] {
        look(&mut game, key);
    }
    let bed = child(&game.view(), "the bed").clone();
    act(&mut game, &bed, "Break it");

    // The bed became planks, the barman's description changed and his glare appeared.
    let view = game.view();
    assert_eq!(child(&view, "a pile of planks").seen, Seen::New);
    assert_eq!(child(&view, "the barman").seen, Seen::New);
    assert_eq!(view.space.seen, Seen::Partial);

    look(&mut game, "tavern/the barman");
    assert_eq!(child(&game.view(), "the barman").seen, Seen::Partial, "his glare is new");
    look(&mut game, "tavern/the barman/his glare");
    assert_eq!(child(&game.view(), "the barman").seen, Seen::Complete);
}

#[test]
fn an_exit_is_marked_by_how_much_of_its_destination_is_seen() {
    let mut game = game();
    let to_square = game.view().exits[0].clone();
    assert_eq!(to_square.seen, Seen::New);
    act(&mut game, &to_square, "Go there");
    let back = game.view().exits[0].clone();
    assert_eq!(back.seen, Seen::Partial, "the tavern was visited but not looked over");
    look(&mut game, "square");
    act(&mut game, &back, "Go there");
    assert_eq!(game.view().exits[0].seen, Seen::Complete);
}
