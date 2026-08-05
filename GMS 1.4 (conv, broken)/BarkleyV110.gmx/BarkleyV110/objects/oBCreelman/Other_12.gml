global.descriptor="Illusion Shot";
global.b_obj=global.b_middle;
if (exec!=-1) { fff=0; exec=-1; walkdist=6; stage=0; wdoing=2; walk=global.b_middle; exit; }
if (stage=0) {
if (fff=0) { fff=1; img=11; ill=1; }

if (fff=10) { target=sEnemyTarget("random",!enemy); ggg=sThrow(x-5.1,y-10,target.x,target.y,9+random(8),30); ggg.image_index=1; ggg.image_speed=0; ggg.target=target; }
if (fff=20) { target=sEnemyTarget("random",!enemy); ggg=sThrow(x-5.1,y-10,target.x,target.y,9+random(8),30); ggg.image_index=1; ggg.image_speed=0; ggg.target=target; }
if (fff=30) { target=sEnemyTarget("random",!enemy); ggg=sThrow(x-5.1,y-10,target.x,target.y,9+random(8),30); ggg.image_index=1; ggg.image_speed=0; ggg.target=target; }
if (fff=40) { target=sEnemyTarget("random",!enemy); ggg=sThrow(x-5.1,y-10,target.x,target.y,9+random(8),30); ggg.image_index=1; ggg.image_speed=0; ggg.target=target; }
if (fff=50) { target=sEnemyTarget("random",!enemy); ggg=sThrow(x-5.1,y-10,target.x,target.y,9+random(8),30); ggg.image_index=1; ggg.image_speed=0; ggg.target=target; }
if (fff=60) { target=sEnemyTarget("random",!enemy); ggg=sThrow(x-5.1,y-10,target.x,target.y,9+random(8),30); ggg.image_index=1; ggg.image_speed=0; ggg.target=target; }

if (fff>74 && instance_exists(oProjectile)=0) { doing=-1; img=1; ill=0; }
}
if (fff!=0) fff+=1;
