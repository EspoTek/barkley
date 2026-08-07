global.descriptor="Shock Buster";
if (exec!=-1) { fff=0; exec=-1; wdoing=1; stage=0; walkdist=30; walk=target; exit; }
if (stage=0) {
if (fff=0) { fff=1; img=1; }
if (fff=15) { sS(mBElectric); img=4; instance_create(x,y,oBBolt1); }
if (fff=25) { sDamage(doing); }
if (fff>35) { doing=-1; img=1; }
}
if (fff!=0) fff+=1;


