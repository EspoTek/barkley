//Ball X, Ball Y, Target X, Target Y, Speed, Height (4-14)
dis=point_distance(argument0,argument1,argument2,argument3);
grv=0.7;
spd=argument4;
dir=point_direction(argument0,argument1,argument2,argument3);
son=instance_create(argument0,argument1,oProjectile);
son.direction=dir;
son.speed=spd;
son.height=-argument5;
son.act=-(((dis/2)/spd)*grv);
son.grv=grv;
//
son.target=target;
son.master=id;
return(son);