global.descriptor="Ectoplasm";
if (exec!=-1) { ecto=0; exec=-1; stage=0; wdoing=1; walk=target; walkdist=-50; wspd=9; exit; }
if (stage=0) {
sDamage(doing);
sBCondition("guard",-999,target);
doing=-1;
ecto=-1;
}
if (fff!=0) fff+=1;
