global.descriptor="Offensive Foul";
if (exec!=-1) { fff=0; exec=-1; walkdist=35; stage=0; wdoing=1; walk=target; exit; }
if (stage=0) {
if (fff=0) { fff=1; }
img=5;
if (fff>30) { depth=target.depth-1; img=6; }
if (fff=31) { sDamage(doing); sound_play(mBallbrain0); }
if (fff>44) { doing=-1; img=1; }
}
if (fff!=0) fff+=2;
