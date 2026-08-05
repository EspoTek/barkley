global.descriptor="Proximity Pass";
global.b_obj=global.b_middle;
if (exec!=-1) { lou=0; bou=0; stage=0; global.b_obj=global.b_middle; doing=4; fff=0; exit; }
if (stage=0) {
if (fff=0) { fff=1; img=1; }
if (fff=5) { 
sprite_index=sBVinceItem; target=sEnemyTarget("random",!enemy);
ggg=instance_create(x+20,y-30,oBProxy); ggg.target=target; ggg.master=id; ggg.depth=target.depth-1;
}
if (fff=10) sprite_index=sBVinceEnemy;
if (fff=20) { 
sprite_index=sBVinceItem; target=sEnemyTarget("random",!enemy);
ggg=instance_create(x+16,y-26,oBProxy); ggg.target=target; ggg.master=id; ggg.depth=target.depth-1;
}
if (fff=25) sprite_index=sBVinceEnemy;
if (fff>40 && instance_exists(oBProxy)=0) { doing=-1; stage=0; finish=1; ended=0; }
}
if (fff!=0) fff+=1;
