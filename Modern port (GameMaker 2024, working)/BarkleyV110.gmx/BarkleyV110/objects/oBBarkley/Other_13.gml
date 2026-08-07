//Vampslam
if (exec!=-1) { lou=0; bou=0; stage=0; }
if (stage=0) {
walk=target;
walkdist=180;
wspd=9;
sprite_index=sBBarkleyRun;
image_index=0;
image_speed=0.5;
stage=1;
} else if (stage=1) {
if (wdone=1) { 
stage=2.5; sprite_index=sBBarkleyVamp; image_index=0; image_speed=0;
}
} else if (stage=2.5) {
bou+=1;
if (bou>6) { bou=0; image_index+=1; } //0-9
if (image_index=2) { air=1; if (bou=0) { path_start(pBarkley3,12,0,0); sS(mBVamploop); } }
if (image_index=7) { 
bou=0;
sprite_index=sBBarkleyEmpty; image_index=0; bou=0; stage=3; air=0;
sSkillDmg("vampslam");
if (string(oDamage.dmg)!="MISS") svr=oDamage.dmg;
else svr=0;
sS(mBBloodZ);
repeat (25) {
bld=instance_create(target.x,target.y,oBVampslam);
bld.target=id;
bld.mode=1;
}
}
} else if (stage=3) {
bou+=1;
if (bou=20) {
sS(mBVamp);
repeat (25) {
bld=instance_create(x-30+random(60),y-70-random(10),oBVampslam);
bld.target=id;
bld.mode=0;
}
}
if (bou=40) {
//if (svr!=0) sMoveSet(3,-svr,0,0,'self',999,1);
if (svr!=0) sBCondition("vp",svr,oBBarkley.id);
//i=3; movevar[i]=0; movebas[i]=-svr; movetar[i]='self'; sDamage(i);
}
if (bou>49) { stage=100; }
} else if (stage=100) {
walk=slav;
walkdist=5;
wspd=9;
image_xscale=-1;
sprite_index=sBBarkleyRun;
image_speed=0.5;
stage=101;
} else if (stage=101) {
if (wdone=1) { doing=-1; stage=0; image_xscale=1; alarm[5]=1; }
}
