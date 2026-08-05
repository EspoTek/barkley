global.descriptor="Grind";
if (exec!=-1) { fff=0; exec=-1; wdoing=2; stage=0; walkdist=25; walk=target; exit; }
if (stage=0) {
if (fff=0) { fff=1; img=7; }
depth=target.depth-1;
if (fff=5) img=6;
if (fff=10) img=7;
if (fff=15) { img=6; sS(mBoing); }
if (fff=20) img=6;
if (fff=25) img=7;
if (fff=30) { sBCondition("inflict","aspergers",target); doing=-1; }
}
if (fff!=0) fff+=1;

