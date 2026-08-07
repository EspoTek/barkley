global.descriptor="Payback";
if (tired=1) { _rspeed=_rspeed*2; _rguard=_rguard*2; tired=0; }
if (exec!=-1) { fff=0; exec=-1; walkdist=40; stage=0; doing=-1; wdoing=4; walk=target; exit; }
if (stage=0) {
if (fff=0) { fff=1; img=1; }
if (fff=15) { depth=target.depth-1; img=7; sBCondition("vp",-abs(rhp-_vp),target); sound_play(mBPunch); }
if (fff>30) { doing=-1; img=1; rhp=-1; }
}
if (fff!=0) fff+=1;

