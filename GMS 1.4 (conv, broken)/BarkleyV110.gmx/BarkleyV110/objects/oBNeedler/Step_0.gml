if (daf=0) { depth=-2000; image_yscale=-image_yscale; }
direction=point_direction(x,y,target.x,target.y);
if (point_distance(x,y,target.x,target.y)<=speed*2) {
instance_destroy();
if (sprite_index=sBAllard) sS(mKillcut);
if (daf=1) { with (master) sDamage(doing); }
}
if (twist=1) image_angle+=it;
else image_angle=direction;
