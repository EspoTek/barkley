global.descriptor="Chomp Chomp, Yum Yum";
global.b_obj=global.b_middle;
if (exec!=-1) { fff=0; exec=-1; walkdist=65; stage=0; wdoing=2; walk=target; exit; }
if (stage=0) {
if (fff=0) { fff=1; img=5; }
if (fff=15) { depth=target.depth-1; img=6; sBCondition("vp",-floor(target._rvp/2),target); sBCondition("vp",floor(target._rvp/2),id); sS(mBTchomp); }
if (fff=25) img=1;
if (fff>29) { doing=-1; img=1; }
}
if (fff!=0) fff+=1;
