//Dash Stab
global.b_obj=global.b_middle;
if (optout=1) {
optout=0;
hoe=oBKata.stage;
with (oBKata) instance_destroy();
if (suc!=0) { cov=0; stage=5; sS(mBZeta); sBarkDmg("stab"); sprite_index=sBBalthiosSkill2; image_index=3; image_speed=0; }
if (suc!=3) { stage=5; shake=5; }
}
if (stage=0) {
optout=0;
suc=0;
oxx=x;
oyy=y;
instance_create(target.x,target.y,oBKata);
oBKata.stage+=1;
stage=1; cov=0;
} else if (stage=1) {
cov+=1;
if (oBKata.c0=1) { suc+=1; stage=2; slide=1; sS(mBDash); sprite_index=sBBalthiosStab; target.shake=5; }
} else if (stage=2) {
oy=target.fy;
walk=target;
walkdist=45;
wspd=25;
stage=3;
} else if (stage=3) { 
if (wdone=1) { stage=3.1; slide=1; cov=0; oBKata.stage+=1; }
} else if (stage=3.1) {
cov+=1;
if (oBKata.c1=1) { suc+=1; cov=0; stage=4; sS(mBSlasher); sprite_index=sBBalthiosSkill0; image_index=2; image_speed=0; target.shake=5; }
} else if (stage=4) {
cov+=1;
if (cov>=4) { stage=4.1; slide=1; cov=0; oBKata.stage+=1; }
} else if (stage=4.1) {
cov+=1;
if (oBKata.c2=1) { suc+=1; optout=1; exit; }
} else if (stage=5) {
cov+=1;
if (cov>=4) { stage=6; cov=0; slide=1; }
} else if (stage=6) {
cov+=1;
if (cov>=0) { 
if (suc!=3) sS(mCursorBack);
else sS(mBDash); 
cov=-999; 
}
walk=slav;
walkdist=25;
wspd=25;
image_xscale=-1;
sprite_index=sBBalthiosStab;
image_speed=0.3;
stage=7;
} else if (stage=7) {
if (wdone=1) { 
slide=0; doing=-1; stage=0; sprite_index=sBBalthiosWalk; image_xscale=1; global.b_obj=global.b_middle; 
}
}


exit;

//Dash Stab
global.b_obj=global.b_middle;
if (stage=0) {
oxx=x;
oyy=y;
instance_create(target.x,target.y,oBKata);
oBKata.stage+=1;
stage=1; cov=0;
} else if (stage=1) {
cov+=1;
if (cov>=15 && oBKata.c0=1) { stage=2; slide=1; sS(mBDash); sprite_index=sBBalthiosStab; }
} else if (stage=2) {
oy=target.fy;
walk=target;
walkdist=45;
wspd=25;
stage=3;
} else if (stage=3) { 
if (wdone=1) { stage=3.1; slide=1; cov=0; oBKata.stage+=1; target.shake=5; }
} else if (stage=3.1) {
cov+=1;
if (cov>=15 && oBKata.c1=1) { cov=0; stage=4; sS(mBSlasher); sprite_index=sBBalthiosSkill0; image_index=2; image_speed=0; }
} else if (stage=4) {
cov+=1;
if (cov>=4) { stage=4.1; slide=1; cov=0; oBKata.stage+=1; }
} else if (stage=4.1) {
cov+=1;
if (cov>=15 && oBKata.c2=1) { cov=0; stage=5; slide=1; sS(mBSlasher); walkdist=-250; sMoveSet(10,18,0.2,1,"enemy",100,1); target.shake=5; sprite_index=sBBalthiosSkill2; image_index=3; image_speed=0; }
} else if (stage=5) {
cov+=1;
if (cov>=4) { stage=6; cov=0; }
} else if (stage=6) {
cov+=1;
if (cov>=0) { sS(mBDash); cov=-999; }
walk=slav;
walkdist=25;
wspd=25;
image_xscale=-1;
sprite_index=sBBalthiosStab;
image_speed=0.3;
stage=7;
} else if (stage=7) {
if (wdone=1) { 
with (oBKata) instance_destroy(); slide=0; doing=-1; stage=0; sprite_index=sBBalthiosWalk; image_xscale=1; global.b_obj=global.b_middle; 
}
}



exit;
//Dash Stab
global.b_obj=global.b_middle;
if (stage=0) {
oxx=x;
oyy=y;
instance_create(target.x,target.y,oBKata);
oBKata.stage+=1;
stage=1; cov=0;
} else if (stage=1) {
cov+=1;
if (cov>=15) { stage=2; slide=1; sS(mBDash); sprite_index=sBBalthiosStab; }
} else if (stage=2) {
oy=target.fy;
walk=target;
walkdist=45;
wspd=25;
stage=3;
} else if (stage=3) { 
if (wdone=1) { stage=3.1; slide=1; cov=0; oBKata.stage+=1; target.shake=5; }
} else if (stage=3.1) {
cov+=1;
if (cov>=8) { cov=0; stage=4; sS(mBSlasher); sprite_index=sBBalthiosSkill0; image_index=2; image_speed=0; }
} else if (stage=4) {
cov+=1;
if (cov>=8) { stage=4.1; slide=1; cov=0; oBKata.stage+=1; target.shake=5; sprite_index=sBBalthiosSkill2; image_index=3; image_speed=0; }
} else if (stage=4.1) {
cov+=1;
if (cov>=8) { cov=0; stage=6; slide=1; sS(mBSlasher); walkdist=-250; sMoveSet(10,18,0.2,1,"enemy",100,1); }
} else if (stage=6) {
cov+=1;
if (cov>=0) { sS(mBDash); cov=-999; }
walk=slav;
walkdist=25;
wspd=25;
image_xscale=-1;
sprite_index=sBBalthiosStab;
image_speed=0.3;
stage=7;
} else if (stage=7) {
if (wdone=1) { 
with (oBKata) instance_destroy(); slide=0; doing=-1; stage=0; sprite_index=sBBalthiosWalk; image_xscale=1; global.b_obj=global.b_middle; 
}
}
