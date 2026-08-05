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
show_debug_message("AUTOQA SAVEDIR " + string(game_save_id));
show_debug_message("AUTOQA SEEDS game=" + string(gameseed) + " monkey=" + string(monkeyseed));
show_debug_message("AUTOQA BEGIN mode=" + string(mode) + " room=" + string(ri) + " inst=" + string(ii) + " nrooms=" + string(nrooms));
alarm[0] = 2;
