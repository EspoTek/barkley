global.descriptor="Rebel Yell";
global.b_obj=global.b_middle;
if (exec!=-1) { fff=0; exec=-1; walkdist=6; stage=0; wdoing=0; walk=global.b_middle; exit; }
if (stage=0) {
if (fff=0) { img=4 fff=1; }
if (fff=30) { img=5; sS(mBYell); }
if (fff=60) { 
tgg=floor(random(4));
if (tgg=0) sBCondition("guard",-999,target);
if (tgg=1) sBCondition("power",-999,target);
if (tgg=2) sBCondition("speed",-999,target);
if (tgg=3) sBCondition("brain",-999,target);
doing=-1; 
}
}
if (fff!=0) fff+=1;

