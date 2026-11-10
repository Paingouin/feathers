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
    walk.go("chapel");
    walk.go("village_square");
    walk.go("barley_road");
    walk.go("aldmoor_gate");

    // Saltwick: a bottle opens the light, the gull's stamp sends the tide out, and the bare
    // shore leads round to the smugglers' other door.
    walk.go("cliff_road");
    walk.go("long_strand");
    assert!(walk.exit("second_cove").unwrap().locked.is_some());
    assert!(walk.exit("wreck_hold").is_none(), "under water for now");
    walk.act("Pick it up");
    walk.go("saltwick_harbour");
    walk.go("saltwick_light");
    assert!(walk.exit("lamp_room").unwrap().locked.is_some());
    walk.act("Give him the bottle");
    walk.go("lamp_room");
    walk.act("Take the stamp");
    walk.go("saltwick_light");
    walk.go("saltwick_harbour");
    walk.go("tide_office");
    walk.act("Hand over the stamp");
    assert!(walk.exit("tide_room").is_none(), "hidden until asked about");
    walk.act("Ask where the tide goes");
    walk.go("tide_room");
    walk.go("tide_office");
    walk.go("saltwick_harbour");
    walk.go("long_strand");
    walk.go("wreck_hold");
    walk.go("long_strand");
    walk.go("second_cove");
    assert!(walk.exit("sea_cave").is_none(), "hidden behind the weed");
    walk.act("Part the weed");
    walk.go("sea_cave");
    walk.go("smugglers_vault");
    assert!(walk.exit("sea_cave").is_some(), "the tunnel is known now");

    walk.go("great_drain");
    walk.go("market");
    walk.go("aldmoor_gate");
    walk.go("barley_road");
    walk.go("mill_lane");
    walk.go("wood_edge");
    walk.go("forest_path");
    walk.go("lake_shore");

    // The Grumbles: a book under a table answers the troll, the echo gives the monks away,
    // their lantern opens the mine, the mine's rope reaches the summit, and the ore cart
    // goes home the fast way.
    walk.go("goat_track");
    walk.go("toll_pass");
    assert!(walk.exit("high_col").unwrap().locked.is_some());
    walk.go("goat_track");
    walk.go("goatherd_hut");
    walk.act("Read it");
    walk.go("goat_track");
    walk.go("toll_pass");
    walk.act("Answer: a road");
    assert!(walk.exit("troll_den").is_none(), "hidden until invited");
    walk.act("Ask about the bridge");
    walk.go("troll_den");
    walk.go("toll_pass");
    walk.go("high_col");
    assert!(walk.exit("old_mine").unwrap().locked.is_some());
    assert!(walk.exit("summit").unwrap().locked.is_some());
    walk.go("echo_gorge");
    walk.act("Shout hello");
    walk.act("Shout again");
    walk.go("high_col");
    walk.go("quiet_monastery");
    assert!(
        walk.exit("shouting_room").is_none(),
        "hidden until owned up to"
    );
    walk.act("Mention the gorge");
    walk.act("Borrow a lantern");
    walk.go("shouting_room");
    walk.go("quiet_monastery");
    walk.go("high_col");
    walk.go("old_mine");
    walk.act("Take the rope");
    assert!(
        walk.exit("sky_seam").is_none(),
        "hidden until the cage comes up"
    );
    walk.act("Pull the lever");
    walk.go("sky_seam");
    walk.go("old_mine");
    walk.go("high_col");
    walk.go("summit");
    walk.go("high_col");
    walk.go("old_mine");
    walk.go("aldmoor_gate");
    assert!(walk.exit("old_mine").is_none(), "the rails are one-way");

    assert_eq!(walk.tracker("Places"), (46, 46));
    assert_eq!(walk.tracker("Secrets"), (13, 13));
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
