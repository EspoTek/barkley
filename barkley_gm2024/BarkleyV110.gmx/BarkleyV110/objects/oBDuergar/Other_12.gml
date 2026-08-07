global.descriptor="Gold Encrusted Pick Toss";
global.b_obj=global.b_middle;
if (exec!=-1) { fff=0; exec=-1; doing=2; stage=0; exit; }
if (stage=0) {
if (fff=0) { fff=1; }
if (fff=15) { sS(mBThrow); target=sEnemyTarget("random",!enemy); ggg=instance_create(x+10,y-10,oBNeedler); ggg.depth=target.depth-1; ggg.target=target; ggg.twist=1; ggg.master=id; ggg.sprite_index=sBDuergar; ggg.image_index=3; ggg.image_speed=0; ggg.speed=7; }
if (fff=30) { sS(mBThrow); target=sEnemyTarget("random",!enemy); ggg=instance_create(x+10,y-10,oBNeedler); ggg.depth=target.depth-1; ggg.target=target; ggg.twist=1; ggg.master=id; ggg.sprite_index=sBDuergar; ggg.image_index=3; ggg.image_speed=0; ggg.speed=7; }
if (fff=45) { sS(mBThrow); target=sEnemyTarget("random",!enemy); ggg=instance_create(x+10,y-10,oBNeedler); ggg.depth=target.depth-1; ggg.target=target; ggg.twist=1; ggg.master=id; ggg.sprite_index=sBDuergar; ggg.image_index=3; ggg.image_speed=0; ggg.speed=7; }
if (fff=60) { sS(mBThrow); target=sEnemyTarget("random",!enemy); ggg=instance_create(x+10,y-10,oBNeedler); ggg.depth=target.depth-1; ggg.target=target; ggg.twist=1; ggg.master=id; ggg.sprite_index=sBDuergar; ggg.image_index=3; ggg.image_speed=0; ggg.speed=7; }
if (fff>60 && instance_exists(oBNeedler)=0) { doing=-1; ended=0; finish=1; }
}
if (fff!=0) fff+=1;

