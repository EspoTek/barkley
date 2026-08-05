//if (global.devplay=1) show_message('Did controller');
//Battles
if (room=RomInter) exit;
stef=0;event_user(3); //retain keys
global.sprinter=100;
global.battlers=0;
with (oPlayer) { pth=global.battlers; global.battlers+=ambattler; }
if (global.battlers>0) {
global.grid=mp_grid_create(4,4,room_width/8,room_height/8,8,8);
mp_grid_add_instances(global.grid,oWall,0);
}
alarm[1]=2; //load battle

//Room Specifics
if (room=RomProtoMain || room=RomProtoStreet) instance_create(0,0,oProtoFog);
cou=0;
sco=0; //name counter
fal=0; //alpha name
dia=0; //diabetes walk
x_v=0; x_d=0;
alarm[0]=1;
//rest
room_speed=60; //60 - test on 15 later
global.rendrate=current_time;
global.rendt=.01;
global.rd=global.rendt*3;
instance_create(0,0,oTinter);
instance_create(0,0,oCinema0);
instance_create(0,0,oCinema1);
instance_create(0,0,oCinema2);
instance_create(0,0,oCinema3);
instance_create(0,0,oCinema4);
instance_create(0,0,oCinema5);
instance_create(0,0,oCinema6);
instance_create(0,0,oCinema7);
//instance_create(0,0,oTester);
global.camera=oBarkley;
if (global.cvx!=-1) { //Positions player
// Port: rooms without an oBarkley -- the save/load menu (RomLoad) -- reach here
// with global.cvx set, because sFileData(4) stashes Barkley's position just
// before switching rooms and sFileData(1) writes it into the .sav.  GM6 raised a
// non-fatal "no instance" error on the two lines below and, with abort-on-error
// off, skipped the remainder of this event (that is the game_errors.log the
// original ReadMe mentions) -- which is precisely why global.cvx still holds the
// position when the save is written.  GM2024 makes that a hard error, so bail out
// explicitly and leave global.cvx alone.
if (!instance_exists(oBarkley)) exit;
oBarkley.x=global.cvx;
oBarkley.y=global.cvy;
global.cvx=-1;
}
if (global.scheme[28]=-999) global.cinema=0; //unfreeze after bball
if (global.roz!=-1 || global.gameoverfade=1) { //Used in cinemas to move rooms
global.gameoverfade=0; global.roz=-1; //added very late
sTrans("fadeout",1);
}
if (global.posser!=-1) { //General mover
global.memposs=global.posser;
global.freeze=1;
oBarkley.x=global.posser.x-4;
oBarkley.y=global.posser.y-16;
if (string_count("oExit",object_get_name(global.posser))!=0) {
sUnchunk();
} else oBarkley.t=global.lookdir;
if (global.tupper!=0) {
if (oBarkley.t=0) oBarkley.y-=16; if (oBarkley.t=2) oBarkley.y+=16;
if (oBarkley.t=3) oBarkley.x-=16; if (oBarkley.t=1) oBarkley.x+=16;
}
sTrans("fadeout",1);
global.posser=-1;
global.roomer=-1;
global.tupper=0;
}
if (global.sat[1]=0) x=x else window_set_position(0,0);
if (global.skip=1) event_user(0);
if (room!=RomLibertyMain && room!=RomDeath0 && room!=RomLibertyTower0 && room!=RomFerry && room!=RomDimensionMain) {
instance_create(gxx,gyy,oBG0);
instance_create(gxx,gyy,oBG1);
instance_create(gxx,gyy,oBG2);
//if (background_index[0]!=-1) if (background_htiled[0]=1 || background_vtiled[0]=1) show_message('report this room to gz');
//if (background_index[1]!=-1) if (background_htiled[1]=1 || background_vtiled[1]=1) show_message('report this room to gz');
//if (background_index[2]!=-1) if (background_htiled[2]=1 || background_vtiled[2]=1) show_message('report this room to gz');
if (__background_get( e__BG.Index, 0 )!=background86) { __background_set( e__BG.HTiled, 0, 0 ); __background_set( e__BG.VTiled, 0, 0 ); }
__background_set( e__BG.HTiled, 1, 0 ); __background_set( e__BG.VTiled, 1, 0 );
__background_set( e__BG.HTiled, 2, 0 ); __background_set( e__BG.VTiled, 2, 0 );
}
