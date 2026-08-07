dev=15;
gravity=0.5+random(0.2);
gravity=gravity*2;
gravity_direction=270-(dev/2)+random(dev);
//speed=10;
direction=270-(dev/2)+random(30);
image_speed=0;
image_index=floor(random(5));
cou=0;
lop=sEnemyTarget("random",1);
with (lop) {
global.b_temp=fy;
}
flor=global.b_temp;
flor=288; //160
//flor=max(y+40,flor);
