//Blow Whistle
if (exec!=-1) { exec=-1; walkdist=75; stage=0; wdoing=0; walk=target; exit; }
if (stage=0) {
if (fff=0) { fff=1; sS(mSuck); }
if (scl>2) {
if (scl=2.1) scl=2.01;
else scl=2.1;
if (fff>30) { fff=0; stage=1; }
} else scl+=0.05;
} else if (stage=1) {
if (fff=0) { 
fff=1; 
sS(mWhistle0); 
tob=oBWhistleP3;
//Same all-instances dot-assign as Other_12: one particle is created per call,
//so GameMaker 2024 re-depths the OLDEST survivor rather than the new one.
instance_create(x+35,y-10,tob);
with (tob) depth=other.target.depth-1;
}
scl=max(1,scl-(scl/6));
if (fff=5) sDamage(doing);
if (fff>10) { fff=0; doing=-1; scl=1; with (tob) instance_destroy();  }
}
if (fff!=0) fff+=1;
