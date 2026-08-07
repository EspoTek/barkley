//brace
if (inair=1) { event_user(5); exit; }
if (exec!=-1) { 
if (blaze=2) { event_user(floor(random(4))); exit; } //do other
global.descriptor="Brace Oneself"; fff=0; exec=-1; stage=0; doing=1; exit; 
}
if (stage=0) {
if (fff=0) { fff=1; img=7; blaze=1; }
if (fff=30) { 
sS(mBallmonster0);
blaze=2; 
sBCondition("power",floor(_rpower*.25),id);
img=1;
}
if (fff>60) { doing=-1; img=1; ended=0; finish=1; } //prevents skip
}
if (fff!=0) fff+=1;
