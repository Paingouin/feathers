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
    // Greenhollow in depth: the graveyard and its crypt, the tavern's kitchen and attic.
    walk.go("cabbage_row");
    walk.go("graveyard");
    assert!(walk.exit("wobble_crypt").is_none(), "hidden under the yew");
    walk.act("Ask about the crypt");
    walk.act("Lift the slab");
    walk.go("wobble_crypt");
    walk.act("Take the staff");
    walk.go("graveyard");
    walk.go("chapel");
    walk.go("village_square");
    walk.go("tipsy_griffon");
    walk.go("griffon_kitchen");
    walk.act("Ask about the founder");
    walk.go("tipsy_griffon");
    walk.go("griffon_landing");
    assert!(
        walk.exit("griffon_attic").is_none(),
        "hidden until the hatch"
    );
    walk.act("Open the hatch");
    walk.go("griffon_attic");
    walk.act("Unwrap it");
    walk.go("griffon_landing");
    walk.go("tipsy_griffon");
    walk.go("village_square");

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
    // The Undertown's side passages: the sluice and the court of the rats.
    walk.go("old_sluice");
    walk.act("Ask about the wheel");
    walk.act("Turn the wheel");
    walk.act("Take what is in the niche");
    walk.go("great_drain");
    walk.go("silt_gallery");
    assert!(walk.exit("rat_court").is_none(), "hidden behind the grille");
    walk.act("Ask about the rats");
    walk.act("Lift the grille");
    walk.go("rat_court");
    walk.act("Open the box");
    walk.go("silt_gallery");
    walk.go("great_drain");

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
    // Tickover, the steam city: every street, the four hidden places and the four artifacts.
    // Starts and ends at cliff_road.
    assert_eq!(walk.here(), "cliff_road");
    walk.go("tk_gate");
    walk.go("tk_escapement_street");
    walk.go("tk_regulator_square");
    walk.go("tk_quay");
    assert!(
        walk.exit("tk_airship").unwrap().locked.is_some(),
        "the mast wants a platform ticket"
    );
    walk.go("tk_regulator_square");
    walk.go("tk_escapement_street");
    walk.go("tk_gate");
    walk.act("Ask for a ticket");
    walk.go("tk_escapement_street");
    walk.go("tk_house");
    walk.go("tk_escapement_street");
    walk.go("tk_inn");
    walk.go("tk_escapement_street");
    walk.go("tk_winders_row");
    walk.go("tk_clockmaker");
    walk.go("tk_winders_row");
    walk.go("tk_boiler_hall");
    assert!(walk.exit("tk_fire_under").is_none(), "stokers only");
    walk.act("Offer to shovel a turn");
    walk.go("tk_fire_under");
    walk.go("tk_boiler_hall");
    walk.go("tk_regulator_square");
    assert!(
        walk.exit("tk_clock_works").is_none(),
        "hidden until the Winder is asked"
    );
    walk.act("Ask why it is four minutes late");
    walk.go("tk_clock_works");
    walk.act("Read the ledger");
    walk.act("Take the key");
    walk.go("tk_regulator_square");
    walk.go("tk_patent_office");
    assert!(
        walk.exit("tk_rejected_vault").is_none(),
        "appeals only, on presentation of a slip"
    );
    walk.act("File a patent");
    walk.go("tk_rejected_vault");
    walk.act("Pick it up");
    walk.go("tk_patent_office");
    walk.go("tk_regulator_square");
    walk.go("tk_constabulary");
    walk.go("tk_regulator_square");
    walk.go("tk_quay");
    walk.go("tk_airship");
    assert!(
        walk.exit("tk_envelope").is_none(),
        "hidden until the Captain is asked"
    );
    walk.act("Ask what holds her up");
    walk.go("tk_envelope");
    walk.act("Touch it");
    walk.act("Take the governor");
    walk.go("tk_airship");
    walk.go("tk_quay");
    walk.go("tk_regulator_square");
    walk.go("tk_escapement_street");
    walk.go("tk_winders_row");
    walk.act("Show him the big iron key");
    walk.go("tk_clockmaker");
    walk.act("Ask about the Fourth Minute");
    walk.go("tk_winders_row");
    walk.go("tk_escapement_street");
    walk.go("tk_gate");
    walk.go("cliff_road");
    walk.go("long_strand");
    assert!(walk.exit("second_cove").unwrap().locked.is_some());
    assert!(walk.exit("wreck_hold").is_none(), "under water for now");
    walk.act("Pick it up");
    walk.go("saltwick_harbour");
    walk.go("slack_water_inn");
    walk.go("saltwick_harbour");
    walk.go("chandlery");
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
    // With the tide out, the harbour has a floor, and the Light has a cellar.
    walk.go("harbour_floor");
    assert!(walk.exit("light_cellar").is_none(), "hidden under the weed");
    walk.act("Scrape the weed away");
    walk.go("light_cellar");
    walk.act("Take the horn");
    walk.go("saltwick_light");
    assert!(walk.exit("light_cellar").is_some(), "the trap is known now");
    walk.go("saltwick_harbour");
    // The Afterthoughts (writer B). Insert where the walk stands in `saltwick_harbour`
    // AFTER the tide has been signed out (`tide_out`), e.g. right after the visit to
    // `light_cellar` and the return to the harbour: Sometimes only stands dry then.
    assert_eq!(walk.here(), "saltwick_harbour");
    walk.go("is_ferry");
    walk.act("Agree with him");
    walk.go("is_landing");
    walk.go("is_inn");
    walk.go("is_landing");
    walk.go("is_net_loft");
    walk.go("is_landing");
    // The still is behind the kippers, once the landlord has not finished a sentence about it.
    walk.go("is_smokehouse");
    assert!(
        walk.exit("is_still_room").is_none(),
        "hidden behind the herring"
    );
    walk.go("is_landing");
    walk.go("is_inn");
    walk.act("Ask what the ordinary is");
    walk.go("is_landing");
    walk.go("is_smokehouse");
    walk.go("is_still_room");
    walk.act("Ask about the First Drop");
    walk.act("Take the vial");
    walk.go("is_smokehouse");
    walk.go("is_landing");
    walk.go("is_chapel");
    walk.go("is_landing");
    // One declaration in two hundred years opens the bonded store.
    walk.go("is_customs");
    assert!(
        walk.exit("is_bonded_store").is_none(),
        "nobody has ever declared"
    );
    walk.act("Declare something");
    walk.go("is_bonded_store");
    walk.act("Claim the wind");
    walk.go("is_customs");
    walk.go("is_landing");
    walk.go("is_puffin_rock");
    walk.go("is_landing");
    walk.go("is_rival_light");
    walk.act("Look at the letter");
    walk.go("is_landing");
    // The seals move over for anyone who sings back, and give the chart to anyone who gives.
    walk.go("is_sea_caves");
    assert!(walk.exit("is_seal_hall").is_none(), "a seal is lying on it");
    walk.act("Sing back");
    walk.go("is_seal_hall");
    walk.act("Declare something");
    walk.act("Reach for the chart");
    walk.go("is_sea_caves");
    walk.go("is_landing");
    // Sometimes is only an island while the Saltwick tide is out.
    walk.go("is_sometimes");
    assert!(walk.exit("is_drowned_bell").is_none(), "under the weed");
    walk.act("Listen at the pool");
    walk.go("is_drowned_bell");
    walk.act("Take the tongue");
    walk.go("is_sometimes");
    walk.go("is_landing");
    walk.go("is_ferry");
    walk.go("saltwick_harbour");
    walk.go("long_strand");
    walk.go("wreck_hold");
    assert!(walk.exit("owners_cabin").is_none(), "hidden under the door");
    walk.act("Jump on it");
    walk.go("owners_cabin");
    walk.act("Try SINK");
    walk.act("Take the compass");
    walk.go("wreck_hold");
    walk.go("long_strand");
    walk.go("second_cove");
    // The Sweltering: south by Kev's boat from the Cove of Second Thoughts, and back.
    // (Starts and ends at `second_cove`.)
    walk.go("jg_landing");
    walk.go("jg_trading_post");
    assert!(walk.exit("jg_back_room").is_none(), "behind the blanket");
    walk.act("Ask what goes north");
    walk.go("jg_back_room");
    walk.act("Take the bottle");
    walk.go("jg_trading_post");
    walk.go("jg_landing");
    walk.go("jg_river");
    assert!(walk.exit("jg_village").unwrap().locked.is_some());
    walk.act("Wake the pilot");
    walk.go("jg_village");
    walk.go("jg_longhouse");
    walk.act("Ask for a light");
    walk.go("jg_village");
    walk.go("jg_volcano");
    assert!(walk.exit("jg_crater").is_none(), "by invitation only");
    walk.act("Ask it yourself");
    walk.go("jg_crater");
    walk.go("jg_volcano");
    walk.go("jg_village");
    walk.go("jg_river");
    walk.go("jg_falls");
    walk.go("jg_river");
    walk.go("jg_camp");
    walk.go("jg_canopy");
    assert!(walk.exit("jg_dell").is_none(), "where the flies go");
    walk.act("Follow the flies");
    walk.go("jg_dell");
    walk.act("Introduce yourself");
    walk.act("Ask about the machete");
    walk.go("jg_canopy");
    walk.go("jg_clearing");
    assert!(walk.exit("jg_tower").is_none(), "nobody can see it");
    walk.act("Walk into the gap");
    walk.go("jg_tower");
    walk.act("Ask for the cloak");
    walk.go("jg_clearing");
    walk.go("jg_temple");
    assert!(
        walk.exit("jg_temple_under").is_none(),
        "under the tenth step"
    );
    walk.act("Count the steps");
    walk.act("Go down");
    walk.go("jg_temple_under");
    walk.act("Take the idol");
    walk.go("jg_temple");
    walk.go("jg_camp");
    walk.go("jg_river");
    walk.go("jg_landing");
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
    // The deeper Mumblewood, now that the hermit is fed.
    walk.go("deep_wood");
    assert!(walk.exit("root_barrow").is_none(), "hidden under the roots");
    walk.act("Look under the roots");
    walk.go("root_barrow");
    walk.act("Take the axe");
    walk.go("deep_wood");
    walk.go("forest_path");
    walk.go("hermit_clearing");
    walk.go("hermit_hut");
    walk.go("hermit_clearing");
    walk.go("forest_path");
    walk.go("upward_falls");
    assert!(
        walk.exit("behind_falls").is_none(),
        "hidden behind the water"
    );
    walk.act("Step through the water");
    walk.go("behind_falls");
    walk.act("Take the cup");
    walk.go("upward_falls");
    walk.go("lake_shore");
    walk.go("reed_beds");
    walk.go("lake_shore");
    walk.go("forest_path");

    // The Everwood: be looked at, get a name, find the Root, ask a boon.
    walk.go("elf_border");
    assert!(walk.exit("silver_glade").unwrap().locked.is_some());
    walk.act("Wait to be looked at");
    walk.go("silver_glade");
    assert!(walk.exit("elf_court").unwrap().locked.is_some());
    walk.go("remembering_tree");
    walk.go("silver_glade");
    walk.go("high_houses");
    assert!(
        walk.exit("elf_mess").is_none(),
        "hidden until the child says"
    );
    walk.act("Ask for a name");
    walk.act("Offer to take it away");
    walk.act("Ask where everything is kept");
    walk.go("elf_mess");
    walk.act("Take the comb");
    walk.go("high_houses");
    walk.go("silver_glade");
    walk.go("elf_court");
    assert!(walk.exit("night_pool").is_none(), "hidden until granted");
    walk.act("Ask a boon");
    walk.act("Offer to carry it");
    walk.go("night_pool");
    walk.go("elf_court");
    walk.go("silver_glade");
    walk.go("elf_border");
    walk.go("forest_path");
    walk.go("lake_shore");

    // The Grumbles: a book under a table answers the troll, the echo gives the monks away,
    // their lantern opens the mine, the mine's rope reaches the summit, and the ore cart
    // goes home the fast way.
    walk.go("goat_track");
    walk.go("marmot_meadow");
    walk.go("mirror_tarn");
    walk.go("marmot_meadow");
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
    walk.go("glacier");
    assert!(walk.exit("ice_cave").is_none(), "hidden until looked for");
    walk.act("Look down it");
    walk.go("ice_cave");
    walk.act("Take the crown");
    walk.go("glacier");
    walk.go("high_col");
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
    walk.go("refectory");
    walk.go("quiet_monastery");
    walk.go("silent_library");
    assert!(
        walk.exit("founders_cell").is_none(),
        "hidden behind the shelf"
    );
    walk.act("Take down the white book");
    walk.go("founders_cell");
    walk.act("Take the jar");
    walk.go("silent_library");
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
    walk.go("mine_gallery");
    assert!(
        walk.exit("foreman_office").is_none(),
        "hidden until unlocked"
    );
    walk.act("Take the key down");
    walk.go("foreman_office");
    walk.act("Open the case");
    walk.go("mine_gallery");
    walk.go("old_mine");
    walk.go("high_col");
    walk.go("summit");
    // The Loose Ends: up the stones from the summit, round the sky islands, and back.
    // Precondition: walk.here() == "summit".
    assert!(
        walk.exit("le_further_path").is_none(),
        "hidden until one more step"
    );
    walk.act("Take one more step");
    walk.go("le_further_path");
    walk.go("le_mooring");
    walk.go("le_tether");
    walk.act("Ask to borrow a peg");
    // Under the village, by the well bucket.
    assert!(walk.exit("le_keel").is_none(), "hidden until the bucket");
    walk.act("Ask about the knotted rope");
    walk.act("Ride the bucket down");
    walk.go("le_keel");
    walk.act("Ask about the masons' things");
    walk.act("Unstrap the plumb line");
    walk.go("le_tether");
    walk.go("le_shop");
    walk.go("le_tether");
    walk.go("le_inn");
    walk.act("Ask about the store");
    walk.go("le_tether");
    // The long line, by peg, to where the wind keeps things.
    walk.go("le_kite_loft");
    assert!(
        walk.exit("le_lost_property").is_none(),
        "hidden until he sees the peg"
    );
    walk.act("Show him the peg");
    walk.go("le_lost_property");
    walk.act("Climb for the grey one");
    walk.go("le_kite_loft");
    walk.go("le_tether");
    // Yesterday, by charter right.
    walk.go("le_weather_office");
    assert!(
        walk.exit("le_weather_store").is_none(),
        "hidden behind the barometer"
    );
    walk.act("Ask for yesterday");
    walk.go("le_weather_store");
    walk.act("Take the jar");
    walk.go("le_weather_office");
    walk.go("le_tether");
    walk.go("le_falls");
    walk.go("le_tether");
    walk.go("le_pasture");
    walk.go("le_upside");
    walk.go("le_pasture");
    walk.go("le_observatory");
    assert!(walk.exit("le_chart_room").is_none(), "hidden under the rug");
    walk.act("Hold the lamp for him");
    walk.go("le_chart_room");
    walk.act("Feel under the rim");
    walk.go("le_observatory");
    walk.go("le_pasture");
    walk.go("le_tether");
    walk.go("le_mooring");
    walk.go("le_further_path");
    walk.go("summit");
    walk.go("high_col");
    walk.go("old_mine");
    // Far Enough: ring the shift bell, sign in, and find where the dwarves went. The grudge
    // ledger names the apprentice, the apprentice lends his key, and his pick goes home.
    assert!(walk.exit("deep_road").unwrap().locked.is_some());
    walk.act("Ring the bell");
    walk.go("deep_road");
    walk.go("dwarf_gate");
    assert!(walk.exit("plumb_square").unwrap().locked.is_some());
    walk.act("Sign the visitors' book");
    walk.go("plumb_square");
    walk.go("watch_post");
    walk.go("inner_wall");
    walk.go("dwarf_gate");
    walk.go("plumb_square");
    walk.go("forge_hall");
    assert!(walk.exit("cold_forge").is_none(), "hidden until asked");
    walk.act("Ask what he is comparing them to");
    walk.go("cold_forge");
    walk.act("Take the hinge");
    walk.go("forge_hall");
    walk.go("plumb_square");
    walk.go("grudge_hall");
    assert!(walk.exit("unlodged").is_none(), "hidden until asked");
    walk.act("Look up the Longshift");
    walk.act("Ask what was lodged that day");
    walk.go("unlodged");
    walk.act("Take the mountain's reply");
    walk.go("grudge_hall");
    walk.go("plumb_square");
    walk.go("beer_hall");
    assert!(walk.exit("pebble_room").is_none(), "hidden until trusted");
    walk.act("Tell him you have seen it");
    walk.go("pebble_room");
    walk.act("Open it");
    walk.go("beer_hall");
    walk.go("plumb_square");
    walk.go("under_fields");
    assert!(
        walk.exit("crystal_garden").is_none(),
        "hidden behind the hurdle"
    );
    walk.act("Admire the mushrooms properly");
    walk.go("crystal_garden");
    walk.act("Admire the flowering");
    walk.act("Take the lens");
    walk.go("under_fields");
    walk.go("plumb_square");
    walk.go("hot_level");
    walk.go("plumb_square");
    walk.go("chisel_street");
    walk.go("rune_shop");
    walk.act("Hold the level");
    walk.go("chisel_street");
    walk.go("dwarf_house");
    walk.go("chisel_street");
    walk.go("school_room");
    walk.go("chisel_street");
    walk.go("counting_house");
    assert!(
        walk.exit("dwarf_strongroom").is_none(),
        "hidden until the account"
    );
    walk.act("Ask about the oldest account");
    walk.go("dwarf_strongroom");
    walk.act("Take the crown");
    walk.go("counting_house");
    walk.go("chisel_street");
    walk.go("plumb_square");
    walk.go("dwarf_gate");
    walk.go("deep_road");
    walk.go("old_mine");
    walk.go("sky_seam");
    walk.act("Take the pick");
    walk.go("old_mine");
    walk.go("deep_road");
    walk.go("dwarf_gate");
    walk.go("plumb_square");
    walk.go("beer_hall");
    walk.go("pebble_room");
    walk.act("Hang up the pick");
    walk.go("beer_hall");
    walk.go("plumb_square");
    walk.go("dwarf_gate");
    walk.go("toll_pass");
    assert!(
        walk.exit("dwarf_gate").is_some(),
        "the tradesmen's door is known"
    );
    walk.go("high_col");
    walk.go("old_mine");
    walk.go("aldmoor_gate");
    assert!(walk.exit("old_mine").is_none(), "the rails are one-way");

    // The castle: a swapped ticket passes the gate, the throne opens the treasury, the cook
    // gives the King away, his warrant opens the dungeon, and the garderobe is the way out.
    walk.go("market");
    walk.go("nobles_row");
    walk.go("castle_hill");
    assert!(walk.exit("castle_bailey").unwrap().locked.is_some());
    walk.act("Take a ticket");
    walk.act("Offer to swap tickets");
    walk.go("castle_bailey");
    assert!(walk.exit("castle_dungeon").unwrap().locked.is_some());
    walk.go("great_hall");
    assert!(walk.exit("treasury").is_none(), "hidden until sat upon");
    walk.act("Sit on it");
    walk.go("treasury");
    walk.go("great_hall");
    walk.go("castle_bailey");
    walk.go("castle_kitchens");
    assert!(walk.exit("kings_garden").is_none(), "hidden until asked");
    assert!(walk.exit("spoon_tunnel").is_none(), "hidden from this end");
    walk.act("Ask about the marrows");
    walk.go("kings_garden");
    walk.act("Ask him to sign something");
    walk.go("castle_kitchens");
    walk.go("castle_bailey");
    // The warrant opens the royal apartments too, and the castle turns out to have treasure
    // after all: a sword, a key, a cup, a fish, and a crown under the chapel.
    walk.go("castle_armoury");
    walk.act("Heave at it");
    walk.act("Stop trying");
    walk.go("castle_bailey");
    walk.go("jewel_house");
    walk.go("castle_bailey");
    walk.go("great_hall");
    walk.go("muniment_room");
    walk.act("Fill in a docket");
    walk.act("Open drawer K");
    walk.act("Read the burial register");
    walk.go("great_hall");
    walk.go("royal_apartments");
    assert!(
        walk.exit("kings_closet").is_none(),
        "hidden behind the press"
    );
    walk.act("Feel along the back");
    walk.go("kings_closet");
    walk.act("Take the cup");
    walk.act("Read the last page");
    walk.go("royal_apartments");
    walk.go("great_hall");
    walk.go("castle_bailey");
    walk.go("castle_chapel");
    assert!(
        walk.exit("royal_crypt").is_none(),
        "hidden until the fish is pressed"
    );
    walk.act("Press the eye of the fish");
    walk.go("royal_crypt");
    walk.act("Take the fish");
    assert!(
        walk.exit("old_hoard").is_none(),
        "hidden until the purse is tried"
    );
    walk.act("Try the purse");
    walk.go("old_hoard");
    walk.act("Take the crown");
    walk.go("royal_crypt");
    walk.go("castle_chapel");
    walk.go("castle_bailey");
    walk.go("castle_dungeon");
    assert!(walk.exit("spoon_tunnel").is_none(), "hidden until shown");
    walk.act("Admire the cell");
    walk.go("oubliette");
    walk.go("castle_dungeon");
    walk.go("spoon_tunnel");
    walk.go("castle_kitchens");
    assert!(
        walk.exit("spoon_tunnel").is_some(),
        "the flagstone is known"
    );
    walk.go("castle_bailey");
    walk.go("wall_walk");
    walk.go("survey_tower");
    walk.act("Report the Grumbles");
    walk.go("wall_walk");
    walk.go("great_drain");
    // The Further Down: from the Great Drain, past the last grating, round the whole
    // underground and back. Starts and ends at `great_drain`.
    assert_eq!(walk.here(), "great_drain");
    assert!(
        walk.exit("fd_last_grating").unwrap().locked.is_some(),
        "latched on the far side"
    );
    walk.act("Reach through and pull the red thread");
    walk.go("fd_last_grating");
    walk.go("fd_slow_river");
    assert!(
        walk.exit("fd_pale_wood").unwrap().locked.is_some(),
        "the ferryman wants a complaint"
    );
    walk.act("Make a sincere complaint");
    walk.go("fd_pale_wood");
    assert!(walk.exit("fd_great_cap").is_none(), "hidden until knocked");
    walk.act("Ask about the biggest one");
    walk.act("Knock three times, low down");
    walk.go("fd_great_cap");
    walk.act("Take the lantern down");
    walk.go("fd_pale_wood");
    walk.go("fd_pardon");
    walk.go("fd_closed_eye");
    walk.act("Ask what you have lost");
    walk.go("fd_pardon");
    walk.go("fd_lost_market");
    assert!(walk.exit("fd_unclaimed").is_none(), "behind the curtain");
    walk.act("Hand over the ticket");
    walk.go("fd_unclaimed");
    walk.act("Draw it out");
    walk.go("fd_lost_market");
    walk.go("fd_dungeon");
    assert!(walk.exit("fd_final_chamber").is_none(), "staff only");
    walk.act("Propose a dress rehearsal");
    walk.act("Fall into it");
    walk.act("Cut the ribbon");
    walk.act("Pull the lever");
    walk.go("fd_final_chamber");
    walk.act("Claim the prize");
    walk.go("fd_dungeon");
    walk.go("fd_lost_market");
    walk.go("fd_pardon");
    walk.go("fd_old_wall");
    assert!(walk.exit("fd_echo_hall").is_none(), "taken for a culvert");
    walk.act("Shout, and listen for where it goes");
    walk.go("fd_echo_hall");
    walk.go("fd_old_wall");
    walk.go("fd_lake");
    assert!(walk.exit("fd_island").is_none(), "not advertised");
    walk.act("Complain that it has no far side");
    walk.go("fd_island");
    walk.act("Take the oar");
    walk.go("fd_lake");
    walk.go("fd_old_wall");
    // Up the stair into the Oubliette from below (the exit itself opens the crack), and back.
    walk.go("fd_stair");
    walk.go("oubliette");
    walk.go("fd_stair");
    walk.go("fd_old_wall");
    walk.go("fd_lake");
    walk.go("fd_slow_river");
    walk.go("fd_last_grating");
    walk.go("great_drain");
    // Aldmoor behind the market: shops, a house, the roofs, the wall and what is in it.
    walk.go("market");
    walk.act("Ask about the odd one");
    walk.go("market_inn");
    walk.go("market");
    walk.go("elbow_lane");
    walk.go("bookshop");
    walk.act("Offer to take it back");
    walk.go("elbow_lane");
    walk.go("magic_shop");
    walk.act("Ask about the window prop");
    walk.go("elbow_lane");
    walk.go("lane_house");
    assert!(
        walk.exit("rooftops").is_none(),
        "hidden until the cats are mentioned"
    );
    walk.act("Ask about the noise upstairs");
    walk.go("rooftops");
    walk.go("town_wall");
    assert!(walk.exit("rooftops").is_none(), "the jump is one-way");
    assert!(
        walk.exit("wall_snug").is_none(),
        "hidden until the tea is explained"
    );
    walk.act("Ask where he gets his tea");
    walk.go("wall_snug");
    walk.go("town_wall");
    walk.go("watch_house");
    walk.act("Claim the glove");
    assert!(walk.exit("town_gaol").unwrap().locked.is_some());
    walk.act("Confess to something");
    walk.go("town_gaol");
    walk.go("watch_house");
    walk.go("elbow_lane");
    walk.go("market");
    walk.go("aldmoor_gate");
    walk.go("barley_road");

    // Hobmoor: the star, what is inside it, the Ribs, the inn, the head.
    walk.go("moor_road");
    // The Glowers: the shuttered village, Castle Regret and the Lower Office beneath it.
    // Starts and ends at moor_road.
    assert_eq!(walk.here(), "moor_road");
    walk.go("gl_low_road");
    walk.go("gl_village");
    walk.go("gl_inn");
    assert!(
        walk.exit("gl_hunters_room").is_none(),
        "hidden until the countersign"
    );
    walk.go("gl_village");
    walk.go("gl_graveyard");
    walk.act("Read the foot of the tomb");
    walk.go("gl_village");
    walk.go("gl_inn");
    walk.act("Give the countersign");
    walk.go("gl_hunters_room");
    walk.act("Take the stake");
    walk.go("gl_inn");
    walk.go("gl_village");
    walk.go("gl_castle_gate");
    assert!(walk.exit("gl_hall").unwrap().locked.is_some());
    walk.act("Knock");
    walk.go("gl_hall");
    walk.go("gl_dining_room");
    walk.act("Sit down to dinner");
    walk.act("Ask about his soul");
    walk.go("gl_hall");
    walk.go("gl_library");
    assert!(
        walk.exit("gl_laboratory").is_none(),
        "hidden behind the bookcase"
    );
    walk.act("Pull the book");
    walk.go("gl_laboratory");
    walk.act("Take the mirror");
    walk.go("gl_library");
    walk.go("gl_hall");
    walk.go("gl_gallery");
    assert!(
        walk.exit("gl_sunroom").is_none(),
        "hidden until the portrait hangs straight"
    );
    walk.act("Straighten it");
    walk.go("gl_sunroom");
    walk.go("gl_gallery");
    walk.go("gl_hall");
    walk.go("gl_bat_loft");
    walk.go("gl_hall");
    walk.go("gl_crypt");
    walk.act("Take the cape");
    walk.go("gl_waiting_room");
    walk.act("Take a ticket");
    assert!(
        walk.exit("gl_lower_office").is_none(),
        "hidden until the number is called"
    );
    walk.act("Show the Count's ticket");
    walk.go("gl_lower_office");
    assert!(
        walk.exit("gl_lost_property").is_none(),
        "hidden until the form is stamped"
    );
    walk.act("Fill in form nine");
    walk.go("gl_lost_property");
    walk.act("Unfold the vellum");
    // Returns: a one-way door back to the churchyard.
    walk.go("gl_graveyard");
    assert!(walk.exit("gl_lost_property").is_none(), "one way");
    walk.go("gl_village");
    walk.go("gl_low_road");
    walk.go("moor_road");
    walk.go("the_dint");
    assert!(
        walk.exit("inside_star").is_none(),
        "hidden until listened to"
    );
    walk.act("Take a splinter");
    walk.act("Prise it out");
    walk.act("Put your ear to it");
    walk.go("inside_star");
    walk.act("Drop a pebble");
    walk.act("Take it back");
    walk.go("the_dint");
    walk.go("moor_road");
    walk.go("the_ribs");
    assert!(
        walk.exit("titan_skull").is_none(),
        "hidden until asked about"
    );
    walk.go("underrib");
    walk.act("Ask to have it");
    walk.act("Ask about the head");
    walk.go("the_ribs");
    walk.go("titan_skull");
    walk.go("the_ribs");
    walk.go("moor_road");
    walk.go("barley_road");
    walk.go("aldmoor_gate");
    walk.go("market");
    walk.go("elbow_lane");

    // The Collegium: somebody else's name at the gate, an overdue book for the stacks, a
    // bronze page for the Founder's study, and a piece of the star for the Long Glass.
    walk.go("academy_gate");
    assert!(walk.exit("academy_quad").unwrap().locked.is_some());
    walk.act("Give your name as Sir Aubrey");
    walk.go("academy_quad");
    walk.go("lecture_hall");
    walk.go("academy_quad");
    walk.go("college_hall");
    walk.go("academy_quad");
    walk.go("practical_room");
    walk.go("academy_quad");
    walk.go("academy_library");
    assert!(
        walk.exit("restricted_stacks").is_none(),
        "hidden behind the Librarian"
    );
    walk.act("Return the overdue book");
    walk.go("restricted_stacks");
    walk.act("Unclip the chain");
    walk.go("academy_library");
    walk.go("academy_quad");
    assert!(
        walk.exit("founders_study").is_none(),
        "hidden under the statue"
    );
    walk.act("Turn the page");
    walk.go("founders_study");
    walk.act("Take the spoon");
    walk.go("academy_quad");
    walk.go("observatory");
    walk.act("Show her the splinter");
    walk.go("academy_quad");

    assert_eq!(walk.tracker("Places"), (239, 239));
    assert_eq!(walk.tracker("Secrets"), (69, 69));
    assert_eq!(walk.tracker("Artifacts"), (56, 56));
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
