global.descriptor="Recharge";
global.b_obj=global.b_middle;
if (exec!=-1) { lou=0; bou=0; stage=0; global.b_obj=global.b_middle; doing=2; fff=0; exit; }
if (stage=0) {
if (fff=0) { fff=1; img=0; sS(mBRecharge); }
if (fff=5) { 
shake=10;
sBCondition("vp",round(global.turn._rvp/5),id); sBCondition("bp",round(global.turn._rbp/5),id);
}

if (fff>29) { doing=-1; stage=0; finish=1; ended=0; }
}
if (fff!=0) fff+=1;
