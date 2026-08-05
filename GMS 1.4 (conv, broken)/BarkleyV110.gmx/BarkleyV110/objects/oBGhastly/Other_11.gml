global.descriptor="Soul Consume";
if (exec!=-1) { exec=-1; stage=0; doing=1; exit; }
global.b_obj=global.b_middle;
if (stage=0) {
sS(mSuck);
sBCondition("vp",-ceil(target._rvp/2),target);
las=instance_create(target.x,target.y,oBSoul);
las.sprite_index=target.sprite_index;
las.image_index=target.image_index; las.image_speed=0;
las.image_index=target.image_index;
las.depth=-2000;
img=2;
stage=1;
} else if (stage=1 && instance_exists(oBSoul)=0) {
sBCondition("vp",ceil(target._rvp/2),id);
sS(mItemUse);
stage=0;
img=1;
doing=-1;
ended=0;
finish=1;
}

