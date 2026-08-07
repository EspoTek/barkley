oBFire1.intensity=intensity;
if (intensity<0) {
sS(mBFirewall);
with (oBFire0) instance_destroy();
instance_destroy();
with (oBattler) {
if (enemy=1) {
col_use=c_red; col_duration=5; col_stray=.15;
//son=(instance_create(x,y,oDamage));
//son.depth=depth-1;
//son.dmg="Power Down";
sSkillDmg("flame"); //was 10
}
}
// GM6 tolerated the rest of the current event after instance_destroy(). The
// modern runner does too, but dereferencing oo[] below now faults because those
// oBFire0 anchors were just destroyed. The effect and damage are complete.
exit;
}
if (pursue=1) {
dis=min(6,point_distance(x,y,global.b_middle.x,global.b_middle.y));
dir=point_direction(x,y,global.b_middle.x,global.b_middle.y);
x+=lengthdir_x(dis,dir);
y+=lengthdir_y(dis,dir);
}
if (spr=1) sS(mBHellZ);
if (dis<1) spr=min(spr+1,35); //40
sT(c_red,spr/100,1);
for (i=0; i<5; i+=1) {
oo[i].x=x+((spr*2)/4)-(i*(spr/4));
oo[i].y=y-(spr*2)+(i*(spr));
}
