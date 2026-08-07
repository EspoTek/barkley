//Snail Zauber
global.b_obj=global.b_middle;
if (stage=0) {
//oy=target.fy;
walk=slav;
walkdist=-25;
sprite_index=sBBalthiosWalk;
image_speed=0.3;
stage=1;
} else if (stage=1) {
if (wdone=1) { 
sprite_index=sBBalthiosSkill6; image_index=0; image_speed=0;
stage=2;
coh=0;
}
} else if (stage=2) {
coh+=1;
if (coh<60) { 
if (floor(random(4))=0) sS(mBSnail0);
vff=instance_create(x-15,y-10,oBSnail);
target=sEnemyTarget("random",!enemy);
vx=target.sprite_width/3;
vy=target.sprite_height/3;
vff.tx=target.x-vx+random(vx*2);
vff.ty=target.y-vy+random(vy*2); 
} else { stage=3; image_index=2; coh=0; }
} else if (stage=3) {
coh+=1;
if (coh>29) { sS(mBSnail1); image_index=1; oBSnail.dissolve=1; stage=4; coh=0; }
} else if (stage=4) {
coh+=1;
if (coh=10) { 
with (oBattler) { if (enemy=1) {
if (random(1)<.5) { sBCondition("speed",-999,id); } else { sDamageC(id,"MISS",c_ltgray); }
} }
}
if (coh>29) stage=6;
} else if (stage=6) {
walk=slav;
walkdist=5;
wspd=3;
image_xscale=-1;
sprite_index=sBBalthiosWalk;
image_speed=0.3;
stage=7;
} else if (stage=7) {
if (wdone=1) { doing=-1; stage=0; image_xscale=1; }
}
