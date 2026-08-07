//Thunder Zauber
if (stage=0) {
oy=target.fy;
walk=slav;
walkdist=-20;
sprite_index=sBBalthiosWalk;
image_speed=0.3;
stage=1.08;
sSkillDmg("thunder");
} else if (stage=1.08) {
if (wdone=1) { stage=1.099; coh=0; sprite_index=sBBalthiosSkill0; image_index=0; image_speed=0; }
} else if (stage=1.099) {
coh+=1;
if (coh>14) {
coh=0; 
sT(c_white,0.5,1);
lop=instance_create(x-10,y-200,oBBolt0);
lop.tx=x-10;
lop.ty=y-25;
stage=1.0999;
}
} else if (stage=1.0999) {
sT(c_white,0,1);
coh+=1;
if (coh>14) { 
coh=0;
stage=1.09;
}
} else if (stage=1.09) {
wspd=20;
walk=target;
walkdist=112;
sprite_index=sBBalthiosStand;
image_speed=0.3;
stage=1.01;
coh=0;
slide=1; //added
sS(mBDash); //added
} else if (stage=1.01) {
coh+=1;
if (coh>14) { slide=0; stage=1.001; coh=0; image_speed=0.18; sprite_index=sBBalthiosJump; path_start(pBalthios0,7,0,0); }
} else if (stage=1.001) {
coh+=1;
if (coh>10) { //5
coh=0;
sT(c_white,0.5,1);
lop=instance_create(x,y,oBBolt0);
lop.tx=target.x;
lop.ty=target.y;
sDamage(doing); cov=0;
target.col_use=c_yellow; target.col_duration=3; target.col_stray=.1;
 } else sT(c_white,0,1);
} else if (stage=2.001) {
coh+=1;
if (coh>14) { coh=0; sprite_index=sBBalthiosSkill0; image_index=1; image_speed=0; stage=3; 
sT(c_white,0.5,1);
lop=instance_create(x+20,y,oBBolt0);
lop.tx=target.x;
lop.ty=target.y;
sDamage(doing); cov=0;
target.col_use=c_yellow; target.col_duration=3; target.col_stray=.1;
}
} else if (stage=3) {
sT(c_white,0,1);
coh+=1;
if (coh>24) { sS(mBDash); slide=1; walk=target; wspd=30; walkdist=90; stage=4; image_index=2; }
} else if (stage=4) {
if (wdone=1) { stage=4.1; slide=0; coh=0; 
sT(c_white,0.5,1);
lop=instance_create(x,y,oBBolt0);
lop.tx=target.x;
lop.ty=target.y;
sDamage(doing); cov=0;
target.col_use=c_yellow; target.col_duration=3; target.col_stray=.1;
}
} else if (stage=4.1) {
sT(c_white,0,1);
coh+=1;
if (coh>14) { stage=6; coh=0; }
} else if (stage=6) {
oy=target.fy;
walk=slav;
walkdist=5;
wspd=6;
image_xscale=-1;
sprite_index=sBBalthiosWalk;
image_speed=0.3;
stage=7;
} else if (stage=7) {
if (wdone=1) { doing=-1; wspd=3; stage=0; image_xscale=1; }
}
