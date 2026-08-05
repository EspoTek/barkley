with (oSoldier0) x=-999;
with (oSoldier1) x=-999;
with (oSoldier2) x=-999;
with (oSoldier3) x=-999;
if (global.scheme[0]>=2 && global.scheme[3]=1) {
alarm[1]=1;
}
if (global.plot>1) {
with (oBalthios) instance_destroy();
with (oJordan) x=-999;
} else {
if (alarm[1]!=1) {
global.camera=oDummy;
global.cinema=1;
alarm[0]=1;
}
}
//soundz
sound_restore(mPart0);
sound_restore(mPart1);
sound_restore(mPart2);
sound_restore(mPart3);
sound_restore(mBase);
sound_restore(mNeoshek);
sound_restore(mWeari);
sound_restore(mThatbal);
if (sA("check",mSpace)=1) sA("stop",mSpace);
if (sA("check",mSadness)=0 && global.plot!=3) sA("loop",mSadness);
