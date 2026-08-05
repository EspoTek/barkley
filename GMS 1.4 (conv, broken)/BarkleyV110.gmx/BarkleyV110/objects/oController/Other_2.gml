//Make paths
for (j=0; j<10; j+=1) global.path[j]=path_add();
//Battle
global.lastmusic=-1;
global.lastload=-9; //Signifys what file to load when die in battle and continue
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
if (global.sat[1]=0) sett=global.sat[0]+1;
else sett=1; //was 2, 640 by 480
event_user(5); //rooms
//Screen stuff
global.displayc=0; //sets resolution
global.displayx=display_get_width();
global.displayy=display_get_height();
display_reset(0, false);
if (global.sat[1]=0) {
window_set_fullscreen(0);
window_set_position((global.displayy/2)-((320*sett)/2),(global.displayy/2)-((240*sett)/2));
} else { //640,480
window_set_fullscreen(1);
if (false) { // display_test_all removed: no monitor mode switching in the port
// display_set_size removed
window_set_position(0,0);
if (global.displayx!=320) { global.displayc=1; }
}
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
