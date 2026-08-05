global.descriptor="Flamesplosion";
if (exec!=-1) { fff=0; exec=-1; doing=0; stage=0; exit; }
if (stage=0) {
if (fff=0) { fff=1; }
if (fff=60) { img=3; sS(mBFirewall); sBCondition("vp",-9999,id); }
else if (fff>30 && fff<60) img=2;
if (fff=90) { doing=-1; finish=1; ended=0; } // visible=0; alarm[0]=45; }
}
if (fff!=0) fff+=1;

