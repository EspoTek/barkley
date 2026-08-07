//Phantom Healing
global.descriptor="Phantom Healing";
global.b_obj=global.b_middle;
if (exec!=-1) { 
if (_bp<10) { event_user(0); exit; }
_bp-=10;
fff=0; exec=-1; gl=0; stage=0; doing=1; exit; }
if (stage=0) {
if (fff=0) { fff=1; img=2; target=sEnemyTarget("random",enemy); }
if (fff>29) { img=1; stage=1; sBCondition("vp",floor(target._rvp/2),target); sound_play(mBScanner); fff=1; }
} else if (stage=1) {
if (fff>14) { doing=-1; img=1; ended=0; finish=1; }
}
if (fff!=0) fff+=1;
