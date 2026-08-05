global.descriptor="Pump Fake";
if (exec!=-1) { fff=0; exec=-1; walkdist=8; stage=0; wdoing=0; walk=global.b_middle; exit; }
if (stage=0) {
if (fff=0) { fff=1; img=10; }
if (fff=10) { img=0; }
if (fff=20) { img=10; }
if (fff=35) { img=0; }
if (fff=40) { img=10; }
if (fff=55) { img=0; sBCondition("speed",-999,target); }
if (fff>65) { doing=-1; img=1; }
}
if (fff!=0) fff+=1;
