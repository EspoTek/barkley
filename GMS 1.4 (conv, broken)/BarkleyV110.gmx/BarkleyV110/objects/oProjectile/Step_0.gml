if (point_distance(x,y,target.x,target.y)<=speed*3) {
global.b_obj=target;
instance_destroy();
sS(mBBallhit);
with (master) { sDamage(doing); }
}
