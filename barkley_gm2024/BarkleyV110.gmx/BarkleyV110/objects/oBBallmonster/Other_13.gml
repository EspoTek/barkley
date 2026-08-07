//Juke Spin
if (inair=1) { event_user(5); exit; }
if (exec!=-1) { global.descriptor="Juke Spinner"; fff=1; exec=-1; wspd=6; walkdist=35; stage=0.5; doing=3; walk=target; img=10; exit; }
if (stage=0.5) {
x+=lengthdir_x(wspd,point_direction(fx,fy,walk.fx-walkdist,walk.fy));
y+=lengthdir_y(wspd*2,point_direction(fx,fy,walk.fx-walkdist,walk.fy));
dist=point_distance(fx,fy,walk.fx-walkdist,walk.fy);
if (dist<wspd) { wdone=1; }
if (fff>3) {
fff=1;
if (img=10) img=11;
else if (img=11) { img=12; }
else if (img=12) img=13;
else if (img=13) { img=10; }
}
if (wdone=1) { wdone=0; stage=0; img=10; fof=0; imx=img; }
} else if (stage=0) {
if (fff>3) {
fff=1;
fof+=1;
if (imx=10) imx=11;
else if (imx=11) { imx=12; sound_play(mMutantballer0); sDamage(doing); }
else if (imx=12) imx=13;
else if (imx=13) { imx=10; }
img=imx;
}
depth=target.depth-1;
if (fff=0) { fff=1; }
if (fof=10) { target=sEnemyTarget("random",!enemy); walk=target; stage=0.6; }
if (fof=22) { target=sEnemyTarget("random",!enemy); walk=target; stage=0.6; } //20
if (fof>33) { stage=1; fff=1; wdone=0; }
} else if (stage=0.6) {
x+=lengthdir_x(wspd,point_direction(fx,fy,walk.fx-walkdist,walk.fy));
y+=lengthdir_y(wspd*2,point_direction(fx,fy,walk.fx-walkdist,walk.fy));
dist=point_distance(fx,fy,walk.fx-walkdist,walk.fy);
if (dist<wspd) { wdone=1; }
if (wdone=1) { wdone=0; stage=0; }
} else if (stage=1) {
walk=slav;
walkdist=6;
x+=lengthdir_x(wspd,point_direction(fx,fy,walk.fx-walkdist,walk.fy));
y+=lengthdir_y(wspd*2,point_direction(fx,fy,walk.fx-walkdist,walk.fy));
dist=point_distance(fx,fy,walk.fx-walkdist,walk.fy);
if (dist<wspd) { wdone=1; }
if (fff>3) {
fff=1;
if (img=10) img=11;
else if (img=11) { img=12; }
else if (img=12) img=13;
else if (img=13) { img=10; }
}
if (wdone=1) { doing=-1; wdone=0; wspd=3; img=1; blaze=0; }
}
if (fff!=0) fff+=1;
