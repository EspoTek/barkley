global.descriptor="BBall Bash";
if (exec!=-1) { fff=0; exec=-1; walkdist=35; stage=0; wdoing=1; walk=target; exit; }
if (stage=0) {
if (fff=0) { fff=1; img=8; shake=5; depth=target.depth-1; }

if (fff=10) { shake=0; img=9; sDamage(doing); sound_play(mBPunch); }
if (fff=15) { shake=5; img=8; }

if (fff=25) { shake=0; img=9; sDamage(doing); sound_play(mBPunch); }
if (fff=30) { shake=5; img=8; }

if (fff=40) { shake=0; img=9; sDamage(doing); sound_play(mBPunch); }
if (fff=45) { shake=0; img=8; }

if (fff>49) { doing=-1; img=1; }
}
if (fff!=0) fff+=1;
