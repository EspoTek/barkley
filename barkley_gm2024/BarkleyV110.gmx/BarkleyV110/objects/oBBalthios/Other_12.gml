//Flame Zauber - fire obj has down power
global.b_obj=global.b_middle;
if (stage=0) {
walk=slav;
walkdist=-30;
sprite_index=sBBalthiosWalk;
image_speed=0.3;
stage=1;
} else if (stage=1) {
if (wdone=1) { stage=2; coh=0; flame=1; lpd=0; ang=0; fir=0; instance_create(x-50,y-5,oBFire2); }
} else if (stage=2) {
lpd=min(46,lpd+1);
if (lpd>23) oBFire2.intensity+=0.01;
if (fir=0) {
ang=max(-90,ang-lpd);
if (ang=-90) { fir=1; sS(mBLaunchZ); }
} else {
ang=min(0,ang+lpd);
if (ang=0) { fir=0; sS(mBLaunchZ); }
}
if (lpd=46) { 
coh+=1;
if (coh>14) { coh=0;
stage=3; oBFire2.pursue=1;
}
}
} else if (stage=3) {
oBFire2.intensity+=0.005;
coh+=1;
lpd-=1.2;
if (fir=0) {
ang=max(-90,ang-lpd);
if (ang=-90) {fir=1; sS(mBLaunchZ); }
} else {
ang=min(0,ang+lpd);
if (ang=0) {fir=0; sS(mBLaunchZ); }
}
if (coh>29) { stage=3.1; flame=0; image_index=0; image_speed=0; coh=0; oBFire2.intensity=1; }
} else if (stage=3.1) {
coh+=1;
if (coh>14) { stage=4; coh=0; }
} else if (stage=4) {
coh+=1; //19- 39
if (coh>0) with (oBFire2) intensity-=0.1;
if (coh>19) { 
sT(c_red,0,0.1);
coh=0;
stage=6;
}
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
