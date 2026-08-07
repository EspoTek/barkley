event_inherited();
//
if (place_meeting(x,y,oFoggier)) {
global.fogtimes=min(4,global.fogtimes+(global.rd/10));
} else global.fogtimes=max(1,global.fogtimes-(global.rd/10));
//Bones
if (global.savefaggot=1) {
global.savetimer-=global.rd;
if (global.savetimer<0) global.savefaggot=0;
}
//Ladder
oBarkley.spd=oBarkley.pspd;
if (place_meeting(x,y,oLadder0)) {
oBarkley.t=0;
oBarkley.tt=0;
oBarkley.spd=oBarkley.pspd/2;
}
//Follow
sFollow("step");
//Ghost battles
if (ghost=1) {
gtimer+=global.rd;
if (gtimer>60) { ghost=0; gtimer=0; with (oFollower) ghost=0; }
}
