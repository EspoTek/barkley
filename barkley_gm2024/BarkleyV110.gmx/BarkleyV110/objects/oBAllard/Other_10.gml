global.descriptor="HGH Pills";
global.b_obj=global.b_middle;
if (exec!=-1) { 
if (hgh!=-1) { 
if (hgh>0.5) hgh-=1; 
if (hgh<=0) {
hgh=0.5;
_rspeed=_rspeed/2; _rguard=_rguard/2; _rpower=_rpower/2; _rbrain=_rbrain/2; sDamageC(id,"All Stats -100%",c_red); finish=1; doing=-1; exit;
} else {
event_user(1+floor(random(5))); exit; 
}
}
hgh=5; stage=0; doing=0; exit; 
}
if (stage=0) {
if (fff=0) { fff=1; img=15; sound_loop(mBPills); }
if (fff=10) { img=16; }
if (fff=20) { img=15; }
if (fff=30) { img=16; }
if (fff=40) { img=15; }
if (fff=50) { img=16; }
if (fff=60) { img=15; }
if (fff=70) { img=16; }
if (fff=75) { img=1; sound_stop(mBPills); _rspeed=_rspeed*2; _rguard=_rguard*2; _rpower=_rpower*2; _rbrain=_rbrain*2; sDamageC(id,"All Stats +100%",c_lime); }
if (fff>79) { doing=-1; img=1; finish=1; }
}
if (fff!=0) fff+=1;
