// Port: GM6 seeded the RNG from the clock at startup; GameMaker 2024 starts
// every run from its documented fixed seed, so without this the whole game is
// deterministic -- identical encounters, damage and drops on every playthrough.
// Measured here: random_get_seed() was 0 on a fresh launch before this call;
// with it, three launches seeded 164549007 / 514373227 / 962908337.
randomise();
// QA harness: inert unless BARKLEY_AUTOQA is set in the environment, so the
// shipped game never creates it. See objects/oAutoQA.
if (environment_get_variable("BARKLEY_AUTOQA") != "") instance_create(0,0,oAutoQA);
// Voice audition screen: same pattern, gated on BARKLEY_VOICETEST.
if (environment_get_variable("BARKLEY_VOICETEST") != "") instance_create(0,0,oVoiceTest);
// Port: build the original bitmap fonts before anything can draw text.
sFontInit();
// Display scaling (port): render at native 320x240; oDisplay's Draw GUI
// event letterboxes it into the window (fit or integer mode)
global.integer_scale = 0; // 0 = fill window (aspect kept), 1 = integer scale + black border
application_surface_draw_enable(false);
//Make paths
for (j=0; j<10; j+=1) global.path[j]=path_add();
//Battle
global.lastmusic=-1;
global.lastload=-9; //Signifys what file to load when die in battle and continue
global.doload=0; //port: RomLoad's oLoader reads this; GM6 read the unset value as 0
//port: sPos("load") loops on global.c__, which only sPos("save") ever assigns.
//A scene that restores positions before anything saved them -- oIntro16/17/20/42
//all call load in an alarm -- therefore read it unset.  GM6 treated that as 0, so
//the loop ran zero times and the restore was a no-op; GameMaker 2024 raises.
global.c__=0;
//port: the Ivory dating sim marks itself started (sOvar 1) in oIntro23's
//"part1" response, but global.lover is only assigned in the conclusion branch.
//Begin it and leave before finishing, and re-entering RomDimensionSim1 fires
//alarm[1], which tests `global.lover>4` against a value nothing ever set.  GM6
//read that as 0 and skipped the branch; GameMaker 2024 raises.
global.lover=0;
//port: global.timpy is a scratch slot for stashing a y-coordinate -- cine_0460
//saves oFerry.y into it and oSeaman's alarm[2] restores it, cine_0166 does the
//same for oHoopz and oIntro0 reads it back.  Reach either restore without its
//matching save having run and the value was never assigned.  GM6 read 0 and put
//the sprite at the top of the room; GameMaker 2024 raises.
global.timpy=0;
global.timpx=0;   //read one line before timpy in oIntro0's alarm[0], same story
//port: hand-meter counters.  oEventc0's Other_12 initialises them to 0 and then
//adds to them, but oHandmeter's Draw event reads `global.duergar*12` every frame
//and can be on screen before that interaction has ever happened.  GM6 read 0;
//GameMaker 2024 raises once per frame.
global.duergar=0;
global.genie=0;
//port: Cuchulainn maze door timers.  Only oItem0g (placed in RomCuchMain, the
//room before the maze) initialises these, and sFileData never saves them -- so
//loading a save taken past the hub and walking back into RomCuchMaze read them
//unset.  GM6 read 0 and the doors were simply shut; GameMaker 2024 raises in
//oMaze1's Step.  oItem0g still re-initialises them on the forward path.
global.cour[0]=0;
global.cour[1]=0;
global.cour[2]=0;
global.cour[3]=0;
global.cour[4]=0;
global.b_music=mBattle; //Battle music
global.b_back=0; //Battle background
global.b_resume=-1; //For resuming music
global.b_debug=0;
global.batset=0; //battle status, sneak etc
global.vending=0;
//Basics
global.did_action=0; //when press key action does this
global.victorian=0;
global.devplay=0; //spacebar on collideguy
global.activeslot=-1; global.savefaggot=0; //Hundley
global.key_up=vk_up;
global.key_down=vk_down;
global.key_left=vk_left;
global.key_right=vk_right;
global.key_action=ord("Z");
global.key_cancel=ord("X");
global.key_start=ord("C");
global.key_amount=7;
global.key_retain=0;
key_joyinit();
key_load();
if (file_exists("config.txt")=0) sConfig(0);
else sConfig(2);
event_user(5); //rooms
//Screen stuff — modernized: resizable window, native fullscreen,
//presentation handled by the persistent oDisplay object (fit/integer modes).
global.displayc=0;
global.displayx=display_get_width();
global.displayy=display_get_height();
if (!instance_exists(oDisplay)) instance_create(0,0,oDisplay);
if (global.sat[1]=0) {
window_set_fullscreen(0);
var wsc = max(1, min(floor((global.displayx*0.8)/320), floor((global.displayy*0.8)/240)));
window_set_size(320*wsc, 240*wsc);
window_center();
} else {
window_set_fullscreen(1);
}
//
sViewInit();
//Schemes
global.bl_=0; //Battle load
global.movefreeze=0; //only for 1 frame for oexit items
global.tupper=0; //if 1, go +16 from start x,y
global.lastname=""; //on room enter fade deal
global.nofollow=0; //if 1 no follow
global.roz=-1; //fader
global.cvx=-1; //for loading
global.plot=0;
for (w=0; w<100; w+=1) global.scheme[w]=0;
//DIalog
global.cleardialog=oController;
global.dia_pos="bottom";
global.dia_border=1;
global.dia_face=0;
global.dia_name="Charles Barkley";
//Control
global.gameoverfade=0;
global.firstshen=0; //first shenmue thing
global.freeze=0;
global.cinema=0;
global.skip=0;
global.skipper=0; //tells me the cinema to skip
//room stuff
global.lookdir=2;
global.posser=-1;
global.roomer=-1;
//Music
bgm_Init();
if (global.devplay=0) event_user(6);
//Start game sequence
room_goto_next();
