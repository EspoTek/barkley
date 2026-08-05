var tttmp;
//Ice Zauber
global.b_obj=global.b_middle;
if (stage=0) {
oy=target.fy;
walk=slav;
walkdist=-30;
sprite_index=sBBalthiosWalk;
image_speed=0.3;
stage=1;
} else if (stage=1) {
if (wdone=1) { 
blu=255;
fll=0; stage=2; sprite_index=sBBalthiosSkill2; image_index=0; image_speed=0; coh=0; 
fol=instance_create(0,0,oBIce0);
fol.target=target;
fol.depth=target.depth-1;
}
} else if (stage=2) {
coh+=1;
if (coh>2) { //was 3
coh=0; image_index+=1; 
//if (image_index=1) sS(mBLaunchZ);
if (image_index=3) {
sS(mBFrost);
repeat (6) { tttmp=instance_create(x-40,y-10,oBIce2); tttmp.target=target; }
fll+=1;
if (fll>1) {
fol.pct+=0.2;
sT(c_blue,fol.pct/2,0.099);
blu=max(blu-40,0);
target.col_use=make_color_rgb(blu,blu,255); target.col_duration=500; target.col_stray=.1;
}
}
}
if (image_index=4) {
if (fll>5) stage=3.1;
else { image_index=0; image_speed=0; }
cov=0;
}
} else if (stage=3.1) {
cov+=1;
if (cov>=19) { cov=0; stage=3.01; sS(mBDash); slide=1; }
} else if (stage=3.01) {
walk=target;
walkdist=55;
wspd=20;
stage=3.02;
} else if (stage=3.02) {
if (wdone=1) { stage=4; slide=0; coh=0; sprite_index=sBBalthiosProjectile; image_speed=0;  }
} else if (stage=4) {
coh+=1;
if (coh>3) { 
coh=0; image_index+=1; 
if (image_index=1) sS(mBLaunchZ);
if (image_index=3) {
with (oBIce0) {
sS(mBShatter);
repeat(floor((global.ww*global.hh)/50)) instance_create(x-20+random(40),y-20+random(40),oBIce1);
instance_destroy();
}
sT(c_blue,0,1);
sSkillDmg("ice");
target.col_duration=0;
}
}
if (image_index=4) {
stage=4.5;
slide=1;
sprite_index=sBBalthiosStand;
coh=0;
}
} else if (stage=4.5) {
coh+=1;
if (coh>9) {
sS(mBDash);
walk=slav;
walkdist=-30;
wspd=20;
stage=5;
}
} else if (stage=5) { ///////
if (wdone=1) { stage=6; slide=0; }
} else if (stage=6) {
oy=target.fy;
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
