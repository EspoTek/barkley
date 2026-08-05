if (go=2) {
image_alpha-=0.1;
if (image_alpha<0) instance_destroy();
}
if (go=1) {
image_angle+=15;
image_xscale-=0.6;
image_yscale-=0.6;
if (image_xscale<1) {
depth=-5002;
lll=instance_create(x+7,y-17,oShine);
go=0;
image_angle=0;
image_xscale=1;
image_yscale=1;
}
}

