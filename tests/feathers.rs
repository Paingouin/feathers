//! Walks the whole Feathers pack along one route, the way a thorough player would.

use std::path::Path;
use std::rc::Rc;

use feathers::game::{Command, Event, Game, Seen, ViewNode};
use feathers::pack::{self, LuaScripts};

struct Walk {
    game: Game<LuaScripts>,
}

impl Walk {
    fn start() -> Self {
        let pack = pack::load(Path::new("packs/feathers")).expect("the Feathers pack loads");
        assert_eq!(pack.report.warnings, Vec::<String>::new());
        let mut game = Game::new(Rc::new(pack.world), pack.scripts);
        game.begin();
        let mut walk = Self { game };
        walk.look_around();
        walk
    }

    fn here(&self) -> String {
        self.game.state().location.to_string()
    }

    /// Looks at everything currently visible in the space, as moving the cursor over it would.
    fn look_around(&mut self) {
        fn keys(node: &ViewNode, out: &mut Vec<String>) {
            out.push(node.key.clone());
            node.children.iter().for_each(|child| keys(child, out));
        }
        let view = self.game.view();
        let mut all = Vec::new();
        keys(&view.space, &mut all);
        for node in view.exits.iter().chain(&view.items) {
            keys(node, &mut all);
        }
        for key in all {
            self.game.apply(Command::Look { key });
        }
    }

    /// Runs the action with this label on whichever thing in the space offers it.
    fn act(&mut self, label: &str) -> Vec<Event> {
        fn find(node: &ViewNode, label: &str) -> Option<Command> {
            node.actions
                .iter()
                .find(|action| action.label == label)
                .map(|action| Command::Act {
                    key: node.key.clone(),
                    action: action.id,
                })
                .or_else(|| node.children.iter().find_map(|child| find(child, label)))
        }
        let command = find(&self.game.view().space, label)
            .unwrap_or_else(|| panic!("nothing in {} offers '{label}'", self.here()));
        let events = self.game.apply(command);
        self.look_around();
        events
    }

    fn exit(&self, to: &str) -> Option<ViewNode> {
        let prefix = format!("{}>{to}#", self.here());
        self.game
            .view()
            .exits
            .into_iter()
            .find(|exit| exit.key.starts_with(&prefix))
    }

    fn go(&mut self, to: &str) {
        let exit = self
            .exit(to)
            .unwrap_or_else(|| panic!("{} shows no way to {to}", self.here()));
        assert!(
            exit.locked.is_none(),
            "the way from {} to {to} is locked",
            self.here()
        );
        self.game.apply(Command::Act {
            key: exit.key,
            action: exit.actions[0].id,
        });
        assert_eq!(self.here(), to);
        self.look_around();
    }

    fn tracker(&self, name: &str) -> (usize, usize) {
        let journal = self.game.journal();
        let tracker = journal
            .trackers
            .iter()
            .find(|tracker| tracker.name == name)
            .unwrap_or_else(|| panic!("no tracker named {name}"));
        (tracker.found, tracker.total)
    }
}

#[test]
fn the_whole_world_can_be_walked() {
    let mut walk = Walk::start();
    assert_eq!(walk.here(), "village_square");
    walk.act("Haul it up");
    walk.act("Smile at her");

    // The cellar is under the barman until the bed gives him somewhere else to be.
    walk.go("tipsy_griffon");
    assert!(walk.exit("griffon_cellar").unwrap().locked.is_some());
    walk.act("Break it");
    walk.go("griffon_cellar");
    walk.act("Pull it free");
    assert!(walk.exit("smugglers_vault").is_none(), "hidden until found");
    walk.act("Push it");
    walk.go("smugglers_vault");
    walk.go("great_drain");
    assert!(
        walk.exit("smugglers_vault").is_none(),
        "one-way until known"
    );

    walk.go("market");
    walk.act("Bump into him");
    walk.go("nobles_row");
    walk.go("noble_house");
    walk.act("Pull it");
    walk.go("secret_study");
    walk.act("Study the map");
    walk.act("Take the ring");
    walk.go("noble_house");
    walk.go("nobles_row");
    walk.go("market");

    walk.go("temple_quarter");
    walk.go("cistern");
    assert!(
        walk.exit("temple_quarter").is_none(),
        "the chute is one-way"
    );
    walk.go("buried_shrine");
    walk.go("cistern");
    walk.go("great_drain");
    assert!(walk.exit("smugglers_vault").is_some(), "the map shows it");

    walk.go("market");
    walk.go("aldmoor_gate");
    walk.go("barley_road");
    walk.go("mill_lane");

    // The Mumblewood: a mushroom buys an oar, the oar reaches the island, the fox shows the oak.
    walk.go("wood_edge");
    walk.go("forest_path");
    assert!(walk.exit("hollow_oak").is_none(), "hidden until the fox");
    walk.act("Pick one");
    walk.act("Follow it");
    walk.go("hermit_clearing");
    walk.act("Offer the moon-cap");
    walk.go("forest_path");
    walk.go("upward_falls");
    walk.go("lake_shore");
    walk.go("lake_island");
    assert!(walk.exit("under_lake").is_none(), "hidden under the stone");
    walk.act("Lift it");
    walk.go("under_lake");
    walk.go("lake_island");
    walk.go("lake_shore");
    walk.go("forest_path");
    walk.go("hollow_oak");
    walk.go("barley_road");
    assert!(walk.exit("hollow_oak").is_none(), "the burrow is one-way");
    walk.go("mill_lane");
    walk.go("village_square");
    walk.go("chapel");
    walk.act("Pull it");
    walk.go("bell_loft");

    assert_eq!(walk.tracker("Places"), (25, 25));
    assert_eq!(walk.tracker("Secrets"), (7, 7));
    let (found, total) = walk.tracker("Wonders");
    assert_eq!(found, total, "every wonder lies on the route");
}

#[test]
fn seen_marks_follow_what_was_looked_at() {
    let mut walk = Walk::start();
    assert_eq!(walk.game.view().space.seen, Seen::Complete);
    let tavern = walk.exit("tipsy_griffon").unwrap();
    assert_eq!(tavern.seen, Seen::New, "an unvisited place is new");

    walk.go("tipsy_griffon");
    // Breaking the bed changes the barman, which makes the room worth another look.
    let command = {
        let view = walk.game.view();
        fn find(node: &ViewNode) -> Option<Command> {
            node.actions
                .iter()
                .find(|action| action.label == "Break it")
                .map(|action| Command::Act {
                    key: node.key.clone(),
                    action: action.id,
                })
                .or_else(|| node.children.iter().find_map(find))
        }
        find(&view.space).unwrap()
    };
    walk.game.apply(command);
    assert_eq!(walk.game.view().space.seen, Seen::Partial);
    walk.look_around();
    assert_eq!(walk.game.view().space.seen, Seen::Complete);
}
