event_inherited();
image_index=1; image_speed=0;
slav=noone; //so Step's `with (slav)` is never an unset read
if (sOvar(object_index,-1)=1) instance_destroy();
else slav=instance_create(x,y,oShiner);
