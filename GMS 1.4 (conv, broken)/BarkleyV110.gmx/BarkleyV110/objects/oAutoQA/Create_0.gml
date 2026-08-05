// Automated crash sweep. Inert unless BARKLEY_AUTOQA is set in the environment;
// oController's Game Start only creates this object in that case, so the shipped
// game never contains a live instance.
//
// Modes:
//   rooms     warp through every room, let each settle so Create/Room Start/Draw run
//   interact  ...and fire User Event 1 (the talk/open event) on every instance
//   monkey    ...and mash the bound keys at random for a while in each room
//
// Most runtime errors are caught in-engine and the sweep carries on; anything
// that escapes hits the unhandled handler, which logs and ends the process so
// the shell driver can relaunch and resume past the offending step.
persistent = true;
visible = false;
mode      = environment_get_variable("BARKLEY_AUTOQA");   // rooms | interact | monkey
var _r = environment_get_variable("BARKLEY_AUTOQA_ROOM");
var _i = environment_get_variable("BARKLEY_AUTOQA_INST");
ri = (_r == "") ? 0 : real(_r);
ii = (_i == "") ? 0 : real(_i);
// Determinism. The game seed makes the run reproducible; the monkey gets its
// OWN stream so the input sequence does not depend on how much RNG the game
// consumes -- otherwise any bugfix shifts every later keypress and a replay
// stops proving anything. Both are logged so a run can be replayed exactly.
var _gs = environment_get_variable("BARKLEY_AUTOQA_SEED");
var _ms = environment_get_variable("BARKLEY_AUTOQA_MSEED");
if (_gs != "") random_set_seed(real(_gs));
gameseed  = random_get_seed();
mk_state  = (_ms == "") ? ((gameseed ^ 0x9E3779B9) & 0xFFFFFFFF) : (real(_ms) & 0xFFFFFFFF);
if (mk_state == 0) mk_state = 1;              // xorshift must not start at zero
monkeyseed = mk_state;
qa_next = function() {                        // xorshift32, independent of random()
	mk_state = mk_state ^ ((mk_state << 13) & 0xFFFFFFFF);
	mk_state = mk_state ^ (mk_state >> 17);
	mk_state = mk_state ^ ((mk_state << 5)  & 0xFFFFFFFF);
	mk_state = mk_state & 0xFFFFFFFF;
	return mk_state;
};
var _f = environment_get_variable("BARKLEY_AUTOQA_FRAMES");
monkeyframes = (_f == "") ? 600 : real(_f);   // ~20s of mashing per room at 30fps
held       = -1;                              // key currently held down, -1 = none
nextswitch = 0;
nkeys      = 0;
keys       = [];
var rm;
rm[0]=RomIntro0;
rm[1]=RomIntro1;
rm[2]=RomTitle;
rm[3]=RomLoad;
rm[4]=RomConfig;
rm[5]=RomGameover;
rm[6]=RomCredits;
rm[7]=RomBarkleyApart;
rm[8]=RomApartHall;
rm[9]=RomChurch;
rm[10]=RomNeoYork0;
rm[11]=RomNeoYork1;
rm[12]=RomNeoYork2;
rm[13]=RomStore0;
rm[14]=RomCatacombMain;
rm[15]=RomCatacombHub1;
rm[16]=RomCatacomb1;
rm[17]=RomCatacomb2;
rm[18]=RomCatacomb3;
rm[19]=RomCatacomb4;
rm[20]=RomCatacomb5;
rm[21]=RomCatacombUrn;
rm[22]=RomCatacombHub2;
rm[23]=RomCatacombLebron;
rm[24]=RomCatacombTomb;
rm[25]=RomSewerTomb0;
rm[26]=RomSewerTomb1;
rm[27]=RomSewerTomb2;
rm[28]=RomSewerTomb3;
rm[29]=RomSewerTomb4;
rm[30]=RomSewer0;
rm[31]=RomSewer1;
rm[32]=RomSewer2;
rm[33]=RomSewerCesspool;
rm[34]=RomSewerHub;
rm[35]=RomSewerInn;
rm[36]=RomSewerTunnel;
rm[37]=RomSewerShop0;
rm[38]=RomSewerShop1;
rm[39]=RomSewerCrevice0;
rm[40]=RomSewerCrevice1;
rm[41]=RomSewerCyberhome;
rm[42]=RomSewerLobby;
rm[43]=RomSewerOffice;
rm[44]=RomSewerGateway;
rm[45]=RomSewerSub;
rm[46]=RomSewerSub2;
rm[47]=RomProtoLadder;
rm[48]=RomProtoStreet;
rm[49]=RomProtoMain;
rm[50]=RomProtoInn;
rm[51]=RomProtoGuns;
rm[52]=RomProtoJuwanna;
rm[53]=RomProtoHovel;
rm[54]=RomProtoDream;
rm[55]=RomSpaldingRoad1;
rm[56]=RomSpaldingRoad2;
rm[57]=RomSpaldingRoad3;
rm[58]=RomSpaldingEntrance;
rm[59]=RomSpaldingRedC;
rm[60]=RomSpaldingRedR;
rm[61]=RomSpaldingBlueC1;
rm[62]=RomSpaldingBlueR1;
rm[63]=RomSpaldingBlueC2;
rm[64]=RomSpaldingBlueR2;
rm[65]=RomSpaldingTop1;
rm[66]=RomSpaldingTop2;
rm[67]=RomDimensionWarp;
rm[68]=RomDimensionMain;
rm[69]=RomDimensionArena0;
rm[70]=RomDimensionArena1;
rm[71]=RomDimensionSim0;
rm[72]=RomDimensionSim1;
rm[73]=RomDimensionRanch;
rm[74]=RomLibertyRoad;
rm[75]=RomFerry;
rm[76]=RomNBAJam;
rm[77]=RomLibertyTower0;
rm[78]=RomLibertyTower1;
rm[79]=RomLibertyTower2;
rm[80]=RomLibertyWell;
rm[81]=RomLibertyMain;
rm[82]=RomLibertyCave;
rm[83]=RomLibertyHouse;
rm[84]=RomSubway0;
rm[85]=RomSubway1;
rm[86]=RomSubwayRoom;
rm[87]=RomSubwayBoard0;
rm[88]=RomSubwayBoard1;
rm[89]=RomSubwayCar0;
rm[90]=RomSubwayCar1;
rm[91]=RomSubwayCar2;
rm[92]=RomSubwayCar3;
rm[93]=RomOverworld;
rm[94]=RomCybership;
rm[95]=RomOutskirts;
rm[96]=RomOutskirtsHub;
rm[97]=RomOutskirtsUp;
rm[98]=RomOutskirtsUpUp;
rm[99]=RomOutskirtsDown;
rm[100]=RomNecronEnter;
rm[101]=RomNecronCourt;
rm[102]=RomNecronFinal;
rm[103]=RomNecronCorridor;
rm[104]=RomNecronEscape;
rm[105]=RomChaos;
rm[106]=RomCuchEnter;
rm[107]=RomCuchMain;
rm[108]=RomCuchMaze;
rm[109]=RomCuchSplit;
rm[110]=RomCuchHoop0;
rm[111]=RomCuchHoop1;
rm[112]=RomCuchCyber0;
rm[113]=RomCuchCyber1;
rm[114]=RomCuchBalthios0;
rm[115]=RomCuchBalthios1;
rm[116]=RomCuchBarkley0;
rm[117]=RomCuchBarkley1;
rm[118]=RomCuchJamicite;
rm[119]=RomCuchCorridor;
rm[120]=RomCuchShimmer;
rm[121]=RomDeath0;
rm[122]=RomDeath1;
rm[123]=RomChup0;
rm[124]=RomChup1;
rm[125]=RomChup2;
// RomTrans is deliberately absent. Nothing navigates to it but oDebugger's F3
// key -- true of the GM6 original too -- so it is a developer test room, not a
// place a player can stand. It also has no oBarkley, which oController's Step_1
// dereferences in any room missing from its line-12 denylist; that denylist
// covers every room the game can actually reach, so warping here only
// manufactures a crash no player can hit. Excluded like RomInit/RomStarter/RomTest.
rm[126]=RomInter;
nrooms=127;
rooms = rm;
phase     = 0;      // 0 = need init, 1 = warping, 2 = settling, 3 = interacting
timer     = 0;
roomtimer = 0;
started   = false;

// --- monkey walk state ------------------------------------------------------
// A monkey that re-rolls its key every few frames is doing a random walk: net
// displacement grows with sqrt(t), so it burns the room budget jittering on one
// spot instead of finding the exits. The fix is holding a direction long enough
// to actually travel -- see the tap-or-hold policy in Step.
mdirs      = [];     // the four bound direction keys, clockwise; built in Alarm_0
mlastx     = -1;     // last observed player position, for stuck detection
mlasty     = -1;
mstill     = 0;      // frames since the player last moved
mstuckcool = 0;      // earliest frame a stuck-rotation may fire again
// --- directed interaction state (phase 5) -----------------------------------
tlist      = [];     // oItem instances in the current room, minus exits
tbuilt     = 0;      // 1 once tlist is built for this room
tskipped   = 0;      // exits deliberately not touched, reported per room
ti         = 0;      // index into tlist
tstate     = 0;      // 0 place, 1 wait for oTalker, 2 release, 3 let it play, 4 fuzz
ttimer     = 0;
trep       = 0;      // which repeat of the current target we are on
treps      = 3;      // repeats per interactable: the same approach lands in a
                     // different state each time (dialog page, shop, post-cutscene),
                     // and the fuzz burst explores from wherever it ended up
tburst     = 45;     // frames of true-random input after each interaction, ~1.5s
tout       = 0;      // frames spent outside the target room on an excursion
tresume    = 0;      // 1 = rebuilding tlist after returning, so keep the cursor
texstate   = 0;      // tstate when an excursion began; 0 = ejected on arrival
texc       = 0;      // excursions taken in this room, to bound re-entry attempts
texcri     = -1;     // room index texc belongs to
// Release whatever is held. Called on room change and at sweep end so a key
// cannot leak into the next room and jam its input.
qa_release = function() {
	if (held >= 0) { keyboard_key_release(held); held = -1; }
};
// Tear down any UI still on screen before moving to the next target. An
// interaction can leave a shop or menu open -- Hundley's oBonesMenu did exactly
// that -- and everything afterwards then happens behind it: the touches still
// fire but no oItem can see oTalker, so every remaining target in the room burns
// its full watchdog and interacts with nothing. Closing it by input is tried
// first in tstate 3; this is the backstop for when that does not take.
qa_clearui = function() {
	keyboard_key_release(global.key_action);
	keyboard_key_release(global.key_cancel);
	with (oDialog)    instance_destroy();
	with (oBonesMenu) instance_destroy();
	with (oStartmenu) instance_destroy();
	if (variable_global_exists("dialog"))     global.dialog     = 0;
	if (variable_global_exists("movefreeze")) global.movefreeze = 0;
	if (variable_global_exists("freeze"))     global.freeze     = 0;
	if (variable_global_exists("cinema"))     global.cinema     = 0;
};
// Every item the game defines, harvested from refItem. Used to randomise the
// inventory so item-handling code -- stacking, the menu list, use effects,
// selling, equipping -- is exercised instead of sitting behind an empty bag.
qa_itemnames = [
	"Ivory's Bromide", "Battlers Tome 1", "Battlers Tome 2", "Battlers Tome 3",
	"Shrekmono Piccie", "Gun's Sticker", "Dimension Whistle", "Genie Lamp",
	"Golden Potato", "Gatorade Gum", "Mysterious Potion", "Ecto Cooler?",
	"Protein Paste", "Ecto Cooler", "BBall Juice", "BBall Shard",
	"BBall Tear", "Steroids", "Chicken Dew", "Chicken Fry",
	"Tobacco", "Insulin", "Chup", "Fstone Mvitamin",
	"Alcohol", "Soccerball", "Volleyball", "B-ball",
	"Spiked B-ball", "Mystic B-ball", "Hell B-ball", "H/S B-ball",
	"Plain Zauber", "Fire Zauber", "Ice Zauber", "Thunder Zauber",
	"Time Zauber", "Hell Zauber", "Bloody Zauber", "Snail Zauber",
	"Rusty Muscle", "Dwarf Wisdom", "Dwarf Pride", "Dwarf Warhammer",
	"Dwarfbane", "Dwarfstear", "Dwarf Muscle", "ZX Zaubertech1",
	"ZX ZaubertechZ", "Mithril'braster", "Battlestech Gun", "ZX ModelX571X",
	"A4431063XZZ 305", "Egyptian Gun", "F.I.N.A.L. G.U.N.", "Tshirt",
	"Rags", "Jersey", "Referee Uniform", "Mithril Jersey",
	"Shrekmono", "Robe", "Jacket", "Trenchcoat",
	"Zaubermancer Garb", "Falcon Jodhpurs", "Cyber-Tunic", "Tek-Skeleton",
	"Tupperware Armor", "Bapes", "Nikes", "Pumps",
	"Glasses", "Sunglasses", "Sweatband", "Goggles",
	"Mithril Sweatband", "Backwards Cap", "Ace Bandage", "Athletic Supporter",
	"Facemask", "Wrist Brace", "Ultimate Wristband", "Cyber-Gauntlet",
	"Maureen's Ring", "Femur", "Poem", "Turkey Feather",
	"Red Keycard", "Blue Keycard", "Green Keycard", "Prototype B-ball",
	"Pipe", "Triangle Rock", "Screwdriver", "Orb Sceptre",
	"Immaculate Rod", "Sugar Counter", "Desk Key", "Poleshaft"
];
// Hand out a random spread, through the game's own sItem so the inventory arrays,
// stacking and ordering stay exactly as the game maintains them. Writing
// global.item_id directly would invent layouts no playthrough produces, and then
// every inventory crash would be a suspect finding rather than a real one.
qa_items = function() {
	var _n = array_length(qa_itemnames);
	var _want = 15 + (qa_next() mod 26);   // 15-40 picks; itemmax is 100 slots
	var _i;
	for (_i = 0; _i < _want; _i += 1) {
		sItem(qa_itemnames[qa_next() mod _n], 1 + (qa_next() mod 9));
	}
	global.gold = 500 + (qa_next() mod 20000);   // enough to exercise shops
};
// Re-assert the state the sweep depends on. Seeding it once at startup is not
// enough: touching a save pump goes to RomLoad, and fuzzing there can start a
// new game or load a slot, both of which run sFileData and reset global.following
// and friends. After that every cutscene addressing a party member raises
// "Unable to find instance for object index", which looks exactly like a game
// bug and is not one. Called on every room entry, so drift cannot outlive a room.
// Rebuilds the follower list rather than appending, or repeated calls would grow it.
qa_state = function() {
	// Followers. Randomising which ones are present was a mistake: cutscenes
	// address a speaker by object index, so a room whose script expects Cyber Dwarf
	// raises the moment he is not in the party -- and at RomSewerHub, say, the
	// story guarantees he is there, because the scene is him telling Barkley the
	// tunnel is the other way. Randomising manufactured a state the game never
	// produces and reported it as a bug.
	// So keep all four real followers present. Extra followers cannot cause a
	// missing-instance crash, only prevent one. The cost is that this masks a real
	// crash in any scene a player could reach *without* a given follower; those
	// need the story flags to decide, not a coin flip.
	// Mark (oFollower9) stays occasional and no more: while he exists, oController's
	// start handler runs his dialogue instead of opening oStartmenu, so a permanent
	// Mark blocks every menu, item, equipment and status screen from being reached.
	global.following[0] = -1;
	sFollow("add", oFollower0);   // Balthios / Ultimate Hellbane
	sFollow("add", oFollower1);   // Vinceborg
	sFollow("add", oFollower2);   // Cyber Dwarf
	sFollow("add", oFollower3);   // Hoopz
	if ((qa_next() mod 8) = 0) sFollow("add", oFollower9);   // Mark, the escort
	// Reshuffle the battle party. sFileData(0) leaves Barkley alone in it, so every
	// fight would be a solo Barkley and the multi-character battle code would never
	// run -- turn order, Cyberdwarf's cover, Hoopz's evade, Vince's recharge, the
	// per-character skill branches in oBattleMenu. Draw without replacement from
	// the five, 1-4 of them, because sBattleImport only has placement branches for
	// party sizes 1 to 4 and a fifth member would simply never be created.
	// Drawn from qa_next, so a replay reproduces the same roster.
	global.party[0] = -1;
	var _pool = [0, 1, 2, 3, 4];   // 0 Barkley, 1 Balthios, 2 Vince, 3 Cyberdwarf, 4 Hoopz
	var _left = 5;
	var _want = 1 + (qa_next() mod 4);
	var _p;
	for (_p = 0; _p < _want; _p += 1) {
		var _k = qa_next() mod _left;
		sParty("add", _pool[_k]);
		_pool[_k] = _pool[_left - 1];
		_left -= 1;
	}
	// A load or new game empties the inventory the same way it clears followers.
	// Only refill when it is actually empty, or re-adding every room would pile up
	// quantities no playthrough could reach.
	if (global.item_id[0] == "") qa_items();
	global.bene[0] = "oBSlamspectre,10,48,96";
	global.bene[1] = "";
	if (!variable_global_exists("romname"))    global.romname    = "QA";
	if (!variable_global_exists("diemessage")) global.diemessage = "";
	if (!variable_global_exists("batface"))    global.batface    = 0;
	if (!variable_global_exists("batset"))     global.batset     = 0;
};
// Anything that escapes a try/catch -- typically an error raised later, in some
// other object's Step, after we perturbed it -- would otherwise pop the runner's
// modal error dialog and block the whole sweep until a human clicks it. Log it
// and end the process so the driver can relaunch unattended.
exception_unhandled_handler(function(_ex) {
	var _msg = "AUTOQA FATAL " + string(_ex.message)
		+ " :: at " + string(_ex.script) + " line " + string(_ex.line);
	show_debug_message(_msg);
	// stdout is lost when game_end() tears the process down mid-flush, which
	// previously swallowed the error entirely and made every crash look like a
	// stall. A file write is synchronous, so persist the detail there too.
	var _f = file_text_open_write("autoqa-crash.txt");
	file_text_write_string(_f, _msg);                                    file_text_writeln(_f);
	file_text_write_string(_f, "room=" + string(ri)
		+ " name=" + room_get_name(rooms[ri]) + " inst=" + string(ii));  file_text_writeln(_f);
	file_text_write_string(_f, "mode=" + string(mode)
		+ " gameseed=" + string(gameseed)
		+ " monkeyseed=" + string(monkeyseed));                          file_text_writeln(_f);
	file_text_close(_f);
	game_end();
});
crashes = 0;
// Clear any crash file left by an earlier launch. The driver treats the mere
// existence of this file as "this run died", so a stale one -- left behind when
// a previous driver was killed before it could clean up -- gets reported as a
// fresh FATAL against a run that was actually fine. Deleting it here means any
// file the driver finds afterwards can only have come from this launch.
if (file_exists("autoqa-crash.txt")) file_delete("autoqa-crash.txt");
show_debug_message("AUTOQA SAVEDIR " + string(game_save_id));
show_debug_message("AUTOQA SEEDS game=" + string(gameseed) + " monkey=" + string(monkeyseed));
show_debug_message("AUTOQA BEGIN mode=" + string(mode) + " room=" + string(ri) + " inst=" + string(ii) + " nrooms=" + string(nrooms));
alarm[0] = 2;
