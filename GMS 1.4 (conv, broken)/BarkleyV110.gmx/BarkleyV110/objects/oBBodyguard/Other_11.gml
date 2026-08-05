global.descriptor="Knuckle Duster";
if (rhp!=-1) { doing=4; event_user(4); exit; }
if (tired=1) { _rspeed=_rspeed*2; _rguard=_rguard*2; tired=0; }
if (exec!=-1) { fff=0; exec=-1; walkdist=35; stage=0; wdoing=1; walk=target; exit; }
if (stage=0) {
if (fff=0) { fff=1; img=1; }
if (fff=15) { depth=target.depth-1; img=8; sDamage(doing); sBCondition("guard",-999,target); sound_play(mBPunch); }
if (fff>30) { doing=-1; img=1; }
}
if (fff!=0) fff+=1;
