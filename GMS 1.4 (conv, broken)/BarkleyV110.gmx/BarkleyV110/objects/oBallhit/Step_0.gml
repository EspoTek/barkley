spd=global.rd*4;
move_towards_point(tx,ty,spd);
if (point_distance(x,y,tx,ty)<=spd) { instance_create(x,y,oExploder2); instance_destroy(); }
