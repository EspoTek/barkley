image_xscale-=shrink;
image_yscale=image_xscale;
image_alpha-=0.1;
if (image_alpha<0) instance_destroy();
