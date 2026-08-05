global.descriptor="Low Blow";
if (exec!=-1) { fff=0; exec=-1; walkdist=35; stage=0; wdoing=0; walk=target; exit; }
if (stage=0) {
if (fff=0) { fff=1; img=1; }
if (fff=10) { depth=target.depth-1; img=10; sDamage(doing); sound_play(mBKick); }
if (fff=20) img=1;
if (fff>29) { doing=-1; img=1; }
}
if (fff!=0) fff+=1;
