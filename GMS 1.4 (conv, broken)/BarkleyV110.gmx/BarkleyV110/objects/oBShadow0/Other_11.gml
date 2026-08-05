global.descriptor="Shadow Lightning";
global.b_obj=global.b_middle;
if (exec!=-1) { exec=-1; fff=0; stage=0; doing=1; exit; }
if (stage=0) {
if (fff=0) { target=sEnemyTarget("random",0); fff=1; }
if (fff=5) { target=sEnemyTarget("random",0); lop=instance_create(target.x,target.y-200,oBBolt2); lop.tx=target.x; lop.ty=target.y; sDamage(doing); }
if (fff=10) { target=sEnemyTarget("random",0); lop=instance_create(target.x,target.y-200,oBBolt2); lop.tx=target.x; lop.ty=target.y; sDamage(doing); }
if (fff=15) { target=sEnemyTarget("random",0); lop=instance_create(target.x,target.y-200,oBBolt2); lop.tx=target.x; lop.ty=target.y; sDamage(doing); }
if (fff=20) { target=sEnemyTarget("random",0); lop=instance_create(target.x,target.y-200,oBBolt2); lop.tx=target.x; lop.ty=target.y; sDamage(doing); }
if (fff=25) { target=sEnemyTarget("random",0); lop=instance_create(target.x,target.y-200,oBBolt2); lop.tx=target.x; lop.ty=target.y; sDamage(doing); }
if (fff=30) { target=sEnemyTarget("random",0); lop=instance_create(target.x,target.y-200,oBBolt2); lop.tx=target.x; lop.ty=target.y; sDamage(doing); }
if (fff=35) { target=sEnemyTarget("random",0); lop=instance_create(target.x,target.y-200,oBBolt2); lop.tx=target.x; lop.ty=target.y; sDamage(doing); }
if (fff=40) { target=sEnemyTarget("random",0); lop=instance_create(target.x,target.y-200,oBBolt2); lop.tx=target.x; lop.ty=target.y; sDamage(doing); }
if (fff=45) { ended=0; doing=-1; finish=1; }
}
if (fff!=0) fff+=1;
