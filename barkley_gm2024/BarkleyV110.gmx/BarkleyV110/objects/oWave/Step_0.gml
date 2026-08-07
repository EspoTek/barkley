image_xscale+=0.1*global.rush;
image_yscale=image_xscale;
alp-=0.05/global.rush;
if (alp<0) instance_destroy();
image_alpha=alp;
speed=10;
image_angle=direction;
