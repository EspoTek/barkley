global.descriptor="Dirty Needles";
global.b_obj=global.b_middle;
if (exec!=-1) { fff=0; exec=-1; walkdist=6; stage=0; wdoing=3; walk=global.b_middle; exit; }
if (stage=0) {
if (fff=0) { fff=1; img=12; ill=0; }
if (fff=5) { img=12; }
if (fff=10) { img=7; }
if (fff=15) { img=13; sS(mBThrow); target=sEnemyTarget("random",!enemy); ggg=instance_create(x+20,y,oBNeedler); ggg.target=target; ggg.master=id; }
if (fff>15) {
ill+=1;
if (ill>5) { if (instance_exists(oBNeedler)=0) { doing=-1; img=1; ill=0; } }
else fff=4;
}
}
if (fff!=0) fff+=1;
