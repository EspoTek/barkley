global.descriptor="Mega Poke";
if (exec!=-1) { fff=0; exec=-1; walkdist=157; stage=0; wdoing=1; walk=target; exit; }
if (stage=0) {
if (fff=0) { path_start(pMaster0,6,0,0); fff=1; }
depth=target.depth;
} if (stage=2) {
if (fff=0) { fff=1; img=1; }
if (fff=20) { img=5; sS(mBPunch); sDamage(doing); }
if (fff>40) doing=-1;
depth=target.depth;
}
if (fff!=0) fff+=1;


