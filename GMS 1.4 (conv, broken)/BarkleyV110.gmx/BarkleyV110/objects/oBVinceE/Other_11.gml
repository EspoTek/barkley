//Refractor Beam
if (exec!=-1) { lou=0; bou=0; stage=0; global.b_obj=global.b_middle; doing=1; exit; }
if (stage=0) {
sprite_index=sBVinceRefract;
las=instance_create(x+12,y-26,oBTarget1);
las.master=id;
with (las) {
target=sEnemyTarget("random",0);
x3=target.x;
y3=target.y;
x4=x3;
y4=y3;
}
bou=0;
stage=1;
} else if (stage=1) {
bou+=1;
if (bou>59) { bou=0; stage=2; with (oBTarget1) instance_destroy(); }
} else if (stage=2) {
sprite_index=sBVinceEnemy;
doing=-1; stage=0; finish=1; ended=0;
}
