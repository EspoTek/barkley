
x+=lengthdir_x(spd,dir);
y+=lengthdir_y(spd,dir);
image_alpha-=0.02+random(0.02);
if (image_alpha<0) instance_destroy();

