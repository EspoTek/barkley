global.descriptor="Flamehell";
global.b_obj=global.b_middle;
if (exec!=-1) { fff=0; exec=-1; wdoing=4; stage=0; walk=global.b_middle; walkdist=20; exit; }
if (stage=0) {
if (fff=0) { fff=1; img=9; sT(c_red,0.25,0.5/15); }
if (fff=15) {
img=10;
instance_create(x+40,y+25,oBTrex1); sS(mBTflame);
oBTrex1.ploy=1; oBTrex1.depth=target.depth-1;
}
if (fff=45) { 
sBCondition("vp",-ceil(oBBarkley._rvp/3),oBBarkley);
sBCondition("vp",-ceil(oBHoopz._rvp/3),oBHoopz);
sBCondition("vp",-ceil(oBBalthios._rvp/3),oBBalthios);
sBCondition("vp",-ceil(oBCyberdwarf._rvp/3),oBCyberdwarf);
sT(c_red,0,0.5/15);
}
if (fff=55) { doing=-1; img=1; }
}
if (fff!=0) fff+=1;


