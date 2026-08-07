//Projectile
global.b_obj=global.b_middle;
if (stage=0.1) {
walk=slav;
walkdist=-30;
sprite_index=sBBalthiosWalk;
image_speed=0.3;
stage=1;
} else if (stage=0) { //1
//if (wdone=1) { 
stage=2; sprite_index=sBBalthiosProjectile; image_index=0; image_speed=0; coh=0; 
//}
} else if (stage=2) { //2
coh+=1;
if (coh>3) { 
coh=0; image_index+=1; 
if (image_index=1) sS(mBLaunchZ);
if (image_index=3) {
qqq=instance_create(x-40,y-15,oBZauber);
qqq.direction=point_direction(x-40,y-15,target.x,target.y);
qqq.target=target;
qqq.type=wea;
}
}
if (image_index=4) {
stage=3;
sprite_index=sBBalthiosStand;
coh=0;
}
} else if (stage=3) {
if (instance_exists(qqq)=0) coh+=1;
if (instance_exists(qqq)=0 || coh>9) { doing=-1; stage=0; image_xscale=1; } //{ stage=6; }
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
