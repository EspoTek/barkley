//punch
if (inair=1) { event_user(5); exit; }
if (exec!=-1) { global.descriptor="Ball Punch"; fff=0; exec=-1; walkdist=50; stage=0; wdoing=0; walk=target; exit; }
if (stage=0) {
if (fff=0) { fff=1; img=14; }
x=x-(4/2)+random(4);
y=y-(4/2)+random(4);
if (fff>14) { stage=2; cou=0; fff=1; img=15; sDamage(doing); sS(mBPunch); }
} else if (stage=2) {
if (fff>29) { doing=-1; img=1; blaze=0; }
}
if (fff!=0) fff+=1;
