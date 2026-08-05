//Shadow slay
global.descriptor="Shadow Slay";
if (exec!=-1) { fff=0; exec=-1; walkdist=7; stage=0; wdoing=2; walk=global.b_middle; exit; }
if (stage=0) {
if (fff=0) { 
fff=1;
tob=oBSlamspectreP1;
instance_create(x,y,tob); tob.master=id;
shadow=1;
sS(mSlamspectre1);
}
if (fff<13) { smt=min(sprite_height,smt+5); }
else { stage=1; walk=target; wdone=0; }
} else if (stage=1) {
x+=lengthdir_x(wspd,point_direction(fx,fy,walk.fx-walkdist,walk.fy));
y+=lengthdir_y(wspd*2,point_direction(fx,fy,walk.fx-walkdist,walk.fy));
dist=point_distance(fx,fy,walk.fx-walkdist,walk.fy);
if (dist<wspd) { wdone=1; }
if (wdone=1) { stage=2; fff=1; }
} else if (stage=2) {
if (fff=10) { sDamage(doing); sS(mSlamspectre2); }
if (fff<15) { tob.dir=1; smt=max(0,smt-10); }
else { stage=20; shadow=0; with (tob) instance_destroy(); }
} else if (stage=20) {
if (instance_exists(tob)=0) { doing=-1; with (tob) instance_destroy();  }
}
if (fff!=0) fff+=1;
