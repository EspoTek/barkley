//Need to get out of status here
//Possibly make until view is centered do not continue
global.b_obj=slov; //set to middle
if (global.b_evade=2) {
global.b_evade=0; //reset evade
oBHoopz.defending=0;
oBHoopz.image_speed=0.2+random(0.05);
oBHoopz.sprite_index=oBHoopz.stand;
}
if (instance_exists(oBCyberdwarf)) { if (oBCyberdwarf._vp<=0) global.b_cover=0; }
//if (global.b_obj!=slov || global.b_focus=0) { alarm[1]=2; exit; }
if (global.b_fobj!=slov) { alarm[1]=2; exit; } //descriptor='' messed it up
//Kill enemies
global.temp=0;
with (oBattler) {
if (enemy=1 && _vp<=0) { kill=1; global.temp=1; }
if (point_distance(x,y,slav.x-footx,slav.y-footy)>16) global.temp=1; //was 15
}
if (global.temp=1) { global.descriptor="  "; oBattleMenu.alarm[0]=22; alarm[1]=21; exit; }
/////////////////////////////////Enemy win battle
global.temp=0;
with (oBattler) { if (kill=0 && enemy=0) global.temp=1; }
if (global.temp=0) { global.b_victory=-1; gover=1; exit; }
/////////////////////////////////You win battle
global.temp=0;
with (oBattler) { if (_vp>0 && enemy=1) global.temp=1; }
if (global.temp=0) { global.b_victory=1; over=1; oBattleMenu.state="pause"; exit; }
/////////////////////////////////First strike or regular
if (firststrike=0) {
sAgility("sort");
global.turn=arrayi;
} else {
global.turn=fastest[fest];
fest+=1;
if (fest>fastmax) firststrike=0;
}
with (oBattler) { hilight=0; finish=0; }
global.turn.onrl=0; //barkley only
////////////////////////////////Check running
if (global.turn.running=1) {
if (floor(random(3))=0) {
global.descriptor="Failed to run from battle!";
oBattleMenu.state="pause";
oBattleMenu.alarm[5]=30;
} else {
oBattleMenu.state="pause";
rover=1;
with (oBattler) { if (enemy=0 && kill=0) {
attack=0; defending=0; sprite_index=runs; image_speed=0.25; image_xscale=-1; running=1; hspeed=3;
} }
exit;
}
}
//////////////////////////////Do rest
if (global.turn.enemy=0) {
oBattleMenu.state="names";
oBattleMenu.pos0=0;
oBattleMenu.asel=2;
oBattleMenu.action=""; //new
global.turn.hilight=1;
if (global.turn.defending=1) {
if (global.turn.object_index=oBBarkley) { global.turn._rguard-=global.turn.defamt; } //sDamageC(global.turn,"Guard Down",c_ltgray);
if (global.turn.object_index=oBCyberdwarf) { global.turn._rguard-=global.turn.defamt; global.b_cover=0; }
sVerifyStats();
}
global.turn.defending=0;
global.turn.running=0;
global.turn.image_xscale=1;
global.turn.image_speed=0.2+random(0.05);
global.turn.sprite_index=global.turn.stand;
//global.b_obj=slov;
}

//Conditions, need clause if you die
if (global.turn.c_diabetes=1) { //Hurt from diabetes, CAN DIE? play sound?
target=global.turn;
_brain=target._brain;
global.b_scover=1;
sMoveSet(0,1+floor(global.turn._rvp*0.05),0,0,"enemy",999,1);
if (global.turn.kill=1 || global.turn._vp<=0) {
global.turn._vp=1; global.turn.kill=0; //global.turn.sprite_index=stand;
}
global.b_scover=0;
}
global.turn.c_hou-=1;
global.turn.c_kou-=1;
global.turn.c_sou-=1;
global.turn.c_mou-=1;
if (global.turn.c_handicapable=1) {
if (global.turn.c_hou<=0) {
sBCondition("cure","handicapable",global.turn);
global.descriptor=global.turn.name + " fought off Handicapable!";
oBattleMenu.state="pause";
oBattleMenu.alarm[5]=60;
exit;
}
}
if (global.turn.c_fouled=1) {
sBCondition("cure","fouled",global.turn);
global.descriptor=global.turn.name + " fouled and missed a turn!";
oBattleMenu.state="pause";
//oBattleMenu.alarm[5]=60;
//alarm[1]=59;
alarm[2]=60;
exit;
}
if (global.turn.c_stroke=1) {
if (global.turn.c_kou<=0) {
sBCondition("cure","stroke",global.turn);
global.descriptor=global.turn.name + " fought off Stroke!";
oBattleMenu.state="pause";
oBattleMenu.alarm[5]=60;
exit;
} else {
global.descriptor=global.turn.name + " cannot move!";
oBattleMenu.state="pause";
alarm[2]=60;
//oBattleMenu.alarm[5]=60;
//alarm[1]=59;
exit;
}
}
if (global.turn.c_montezuma=1) {
if (global.turn.c_mou<=0) {
sBCondition("cure","montezuma",global.turn);
global.descriptor=global.turn.name + " fought off Montezuma's Revenge!";
oBattleMenu.state="pause";
oBattleMenu.alarm[5]=60;
exit;
}
}
if (global.turn.c_slowed=1) {
if (global.turn.c_sou<=0) {
sBCondition("cure","timeout",global.turn);
global.descriptor=global.turn.name + " fought off Timeout!";
oBattleMenu.state="pause";
oBattleMenu.alarm[5]=60;
exit;
}
}
