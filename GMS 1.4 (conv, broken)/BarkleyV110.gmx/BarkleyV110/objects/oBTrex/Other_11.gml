global.descriptor="Tail Whip";
global.b_obj=global.b_middle;
if (exec!=-1) { fff=0; exec=-1; walkdist=35; stage=0; wdoing=1; walk=target; exit; }
if (stage=0) {
if (fff=0) { fff=1; img=4; }
if (fff=10) { depth=target.depth-1; image_xscale=-1; sDamage(doing); sS(mKillcut); }
if (fff=15) image_xscale=1;
if (fff=20) { depth=target.depth-1; image_xscale=-1; sDamage(doing); sS(mKillcut); }
if (fff=25) image_xscale=1;
if (fff=30) { depth=target.depth-1; image_xscale=-1; sDamage(doing); sS(mKillcut); }
if (fff=35) image_xscale=1;
if (fff>39) { doing=-1; img=1; }
}
if (fff!=0) fff+=1;
