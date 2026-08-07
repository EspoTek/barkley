global.descriptor="Grasp of Glucose";
if (smile=1) { event_user(4); exit; }
if (exec!=-1) { 
fff=1; exec=-1; stage=0; wdoing=2; walk=target; walkdist=65; exit; 
}
if (stage=0) {
if (fff=1) { grasp=1; gou+=8; }
if (fff=10) { sDamage(doing); gou-=10; sS(mBallbrain0); }
if (fff=20) { sDamage(doing); gou-=10; sS(mBallbrain0); }
if (fff=30) { sDamage(doing); gou-=10; sS(mBallbrain0); }
if (fff=40) { gou-=4; grasp=2; }

if (fff>49) { img=1; stage=0; doing=-1; grasp=0; }
}
if (fff!=0) fff+=1;
