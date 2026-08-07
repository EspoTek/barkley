//Technical Foul
global.descriptor="Technical Foul";
if (exec!=-1) { 
img=2; fff=0; exec=-1; walkdist=25; stage=0.1; doing=2; 
walk=global.b_middle;
exit; }
if (stage=0.1) {
if (wdone=1) { wdone=0; stage=0.2; fff=0; fof=0; fef=0; img=4; }
} else if (stage=0.2) {
fff+=3;
if (img=4) img=2;
else if (img=2) img=3;
else if (img=3) img=4;
//img=floor(2+random(3));
if (fff=60) { sS(mDreadref2); sBCondition("inflict","fouled",target); fef=0; }
if (fff>120) { stage=0.3; image_angle=0; walk=slav; walkdist=5; image_xscale=-1; }
} else if (stage=0.3) {
if (wdone=1) { 
finish=1; wdone=0; stage=0; doing=-1; image_xscale=1; //with (lef) instance_destroy(); 
}
}
