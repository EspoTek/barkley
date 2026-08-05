global.descriptor="Battle Roar";
global.b_obj=global.b_middle;
if (exec!=-1) { fff=0; exec=-1; wdoing=3; stage=0; walk=global.b_middle; walkdist=7; exit; }
if (stage=0) {
if (fff=0) { fff=1; img=11; }
if (fff<20) {
x=x-(1)+random(2);
y=y-(1)+random(2);
}
if (fff=20) { 
if (_xpower<_xbrain) sBCondition("power",999,id); 
else sBCondition("brain",999,id); 
sS(mBTcry); img=12;
}
if (fff=35) { doing=-1; img=1; }
}
if (fff!=0) fff+=1;


