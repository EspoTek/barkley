global.descriptor="Entrance";
global.b_obj=global.b_middle;
if (exec!=-1) { fff=0; exec=-1; wdoing=1; stage=0; walkdist=20; walk=global.b_middle; exit; }
if (stage=0) {
if (fff=0) { fff=1; img=3; }
if (fff=30) {sS(mBGaze);  sT(c_blue,0.5,1); }
if (fff=31) {
sT(c_blue,0,.1);
with (oBattler) {
if (enemy=0) {
mw=floor(random(4));
if (mw=0) { sBCondition("guard",-999,id); }
if (mw=1) { sBCondition("power",-999,id); }
if (mw=2) { sBCondition("speed",-999,id); }
if (mw=3) { sBCondition("brain",-999,id); }
}
}
}
if (fff>35) stage=1;
} else { //1
doing=-1;
}
if (fff!=0) fff+=1;

