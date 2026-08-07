global.descriptor="Tackle";
if (exec!=-1) { fff=0; exec=-1; walkdist=7.1; stage=0; wdoing=0; walk=target; exit; }
if (stage=0) {
if (fff=0) { fff=1; }
if (fff>0) { depth=target.depth-1; }
if (fff=3) { sDamage(doing); sound_play(mBallbrain0); }
if (fff>5) { doing=-1; img=1; }
}
if (fff!=0) fff+=2;

