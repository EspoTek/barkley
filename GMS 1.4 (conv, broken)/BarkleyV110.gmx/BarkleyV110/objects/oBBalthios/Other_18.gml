//Scanner
global.b_obj=global.b_middle;
if (stage=0) {
oxx=x;
oyy=y;
walk=global.b_middle;
walkdist=-300;
wspd=50;
sS(mBDash);
sprite_index=sBBalthiosStab;
slide=1;
image_speed=0.3;
stage=1;
} else if (stage=1) {
if (wdone=1) { sT(c_white,1,1); stage=2; coh=0; sprite_index=sBBalthiosStand; image_index=0; image_speed=0; }
} else if (stage=2) {
coh+=1;
if (coh>2) {
stage=3;
sT(c_white,0,1);
}
} else if (stage=3) {
stage=6;
sS(mBZeta);
with (oBattler) if (enemy=1) {
aglc=max(0,aglc-(global.aglcount/5));
shake=5;
sDamageC(id,"Turn Order -20%",c_red);
}
} else if (stage=6) {
x=oxx;
y=oyy;
image_xscale=-1;
sprite_index=sBBalthiosStand;
image_speed=0;
stage=7;
} else if (stage=7) {
doing=-1; stage=0; image_xscale=1; slide=0;
}
