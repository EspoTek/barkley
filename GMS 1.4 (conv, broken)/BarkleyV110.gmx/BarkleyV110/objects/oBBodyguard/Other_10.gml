global.descriptor="Head Buster";
if (rhp!=-1) { doing=4; event_user(4); exit; }
if (tired=1) { _rspeed=_rspeed*2; _rguard=_rguard*2; tired=0; }
if (exec!=-1) { fff=0; exec=-1; walkdist=35; stage=0; wdoing=0; walk=target; exit; }
if (stage=0) {
if (fff=0) { fff=1; img=1; }
if (fff=15) { depth=target.depth-1; img=4; target.x-=8; }
if (fff=30) { img=6; sDamage(doing); sBCondition("brain",-999,target); sound_play(mBallbrain0); target.x+=8; }
if (fff>44) { doing=-1; img=1; }
}
if (fff!=0) fff+=1;

