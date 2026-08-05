global.descriptor="Dojo Kick";
if (exec!=-1) { 
if (_bp<10) { event_user(floor(random(3))); exit; }
_bp-=10; fff=0; exec=-1; stage=0; wdoing=3; walk=target; walkdist=33; oy=y; exit; 
}
if (stage=0) {
if (fff=0) { fff=1; img=7; }
if (fff=15) { img=8; }
if (fff=25) { img=9; sDamage(doing); sS(mBKick); }
if (fff=35) { img=8; }
if (fff=45) { img=7; }
if (fff>55) { stage=2; }
} else if (stage=2) {
doing=-1; image_xscale=-1; img=1;
}
if (fff!=0) fff+=1;
