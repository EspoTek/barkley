global.descriptor="Combination";
if (rhp!=-1) { doing=4; event_user(4); exit; }
if (tired=1) { _rspeed=_rspeed*2; _rguard=_rguard*2; tired=0; }
if (exec!=-1) { fff=0; exec=-1; walkdist=35; stage=0; wdoing=2; walk=target; exit; }
if (stage=0) {
if (fff=0) { fff=1; img=1; }
if (fff=10) { depth=target.depth-1; img=4; target.x-=8; }
if (fff=20) { img=6; sDamage(0); sBCondition("brain",-999,target); sound_play(mBallbrain0); target.x+=8; }
if (fff=30) img=1;
if (fff=40) { depth=target.depth-1; img=8;  sDamage(1); sBCondition("guard",-999,target); sound_play(mBPunch); }
if (fff=50) img=1;
if (fff=60) { depth=target.depth-1; img=7;  sDamage(doing); sBCondition("power",-999,target); sound_play(mBPunch); }
if (fff=70) img=1;
if (fff=80) { depth=target.depth-1; img=8; sDamage(1); sound_play(mBPunch); }
if (fff>90) { doing=-1; img=1; tired=1; _rspeed=_rspeed/2; _rguard=_rguard/2; }
}
if (fff!=0) fff+=1;
