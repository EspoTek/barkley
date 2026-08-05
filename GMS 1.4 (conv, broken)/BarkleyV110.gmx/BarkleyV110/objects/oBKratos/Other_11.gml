global.descriptor="Shoulder Butt";
if (exec!=-1) { fff=0; exec=-1; walkdist=30; stage=0; wdoing=1; walk=target; exit; }
if (stage=0) {
if (fff=0) { img=4 fff=1; }
if (fff=15) { sS(mBPunch); sDamage(doing); img=6; }
if (fff=30) { img=4; }
if (fff=45) { sS(mBPunch); sDamage(doing); img=6; }
if (fff=60) { doing=-1; }
}
if (fff!=0) fff+=1;

