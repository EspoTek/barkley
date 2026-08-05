global.descriptor="Doomfire Death";
global.b_obj=global.b_middle;
if (exec!=-1) { 
if (doom=1) { event_user(floor(random(5))); exit; }
doom=1; fff=0; exec=-1; wdoing=5; stage=0; walk=global.b_middle; walkdist=7; exit; 
}
if (stage=0) {
if (fff=0) { fff=1; frl=0; img=13; sT(c_red,0.5,0.5/30); sS(mBTcry); }
frl+=1;
if (fff=5) img=14;
if (fff=10) { img=13; fff=1; }
if (frl=20) {
instance_create(target.x,target.y+10,oBTrex1); sS(mBTdoomfire);
oBTrex1.ploy=0; oBTrex1.depth=target.depth-1;
}
if (frl=40) sBCondition("vp",-9999,target);
if (frl=60) {
target=sEnemyTarget("random",!enemy);
instance_create(target.x,target.y+10,oBTrex1); sS(mBTdoomfire);
oBTrex1.ploy=0; oBTrex1.depth=target.depth-1;
}
if (frl=80) sBCondition("vp",-9999,target);
if (frl=90) sT(c_red,0,0.5/30);
if (frl=110) { doing=-1; img=12; }
}
if (fff!=0) fff+=1;
