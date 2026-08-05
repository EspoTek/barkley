//Phantom Boost
global.descriptor="Phantom Boost";
global.b_obj=global.b_middle;
if (exec!=-1) { 
if (_bp<5) { event_user(0); exit; }
_bp-=5;
fff=0; exec=-1; gl=0; stage=0; doing=2; exit; }
if (stage=0) {
if (fff=0) { fff=1; img=2; target=sEnemyTarget("random",enemy); }
if (fff>29) { img=1; stage=1; 
zih=floor(random(4));
if (zih=0) sBCondition("power",999,target); 
else if (zih=0) sBCondition("guard",999,target); 
else if (zih=0) sBCondition("speed",999,target); 
else sBCondition("brain",999,target); 
sound_play(mBallmonster0); fff=1; }
} else if (stage=1) {
if (fff>14) { doing=-1; img=1; ended=0; finish=1; }
}
if (fff!=0) fff+=1;

