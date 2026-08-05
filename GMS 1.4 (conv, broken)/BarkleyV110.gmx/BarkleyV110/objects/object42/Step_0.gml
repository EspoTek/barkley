room_speed=30;
__view_set( e__VW.YView, 0, 5-(global.shake/2)+random(global.shake) );
__view_set( e__VW.XView, 0, 5-(global.shake/2)+random(global.shake) );
instance_create(object42.x,object42.y,oShadowz);
if (sky=0) fff=id;
else fff=oDummy;
//sViewFollow(fff);
if (limit=1) {
if (y>ystart) {
y=ystart;
limit=0;
alarm[0]=1;
}
}
if (fire=1) {
repeat (3) instance_create(x+31-20+random(40),y+38-10+random(20),oFlame0);
}
if (fire=2) {
repeat (3) instance_create(x+31-20+random(40),y+38-10+random(20),oFlame1);
}
if (goku=1) {
bal+=0.25;
{ tttmp=instance_create(x+31,y+38,oGokuer); tttmp.rad=bal; }
}
if (rocks=1) {
if (round(random(2))=0) instance_create(__view_get( e__VW.XView, 0 )-20+random(340),__view_get( e__VW.YView, 0 )+280,oQuake);
} else sound_stop(mEarth);
if (flip=1) {
fst-=0.01;
cou+=1;
if (cou>=fst) {
cou=0;
if (image_index=3) image_index=4; image_speed=0;
else if (image_index=4) image_index=5; image_speed=0;
else if (image_index=5) image_index=6; image_speed=0;
else { image_index=3; image_speed=0; }
}
}
