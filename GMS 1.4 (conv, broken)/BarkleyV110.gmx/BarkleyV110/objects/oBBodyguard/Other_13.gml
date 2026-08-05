global.descriptor="Goad";
if (tired=1) { _rspeed=_rspeed*2; _rguard=_rguard*2; tired=0; }
if (exec!=-1) {
if (rhp!=-1) { doing=4; event_user(4); exit; }
fff=0; exec=-1; walkdist=10; stage=0; wdoing=3; walk=global.b_middle; exit; }
if (stage=0) {
if (fff=0) { fff=1; img=1; rhp=_vp; }
if (fff=10) { img=4; }
if (fff=20) { img=5; }
if (fff=30) { img=1; }
if (fff=40) { img=4; }
if (fff=50) { img=5; }
if (fff>60) { doing=-1; img=1; }
}
if (fff!=0) fff+=1;

