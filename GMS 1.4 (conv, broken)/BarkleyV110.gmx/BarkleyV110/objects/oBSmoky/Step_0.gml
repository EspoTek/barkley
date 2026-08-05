if (fade=1) {
speed=3;
image_alpha-=0.1;
if (image_alpha<0) instance_destroy();
} else speed=10;

