if (fade=1) image_alpha=min(1,image_alpha+(0.05*global.rd));
else image_alpha=max(0,image_alpha-(0.05*global.rd));
if (fade=0 && image_alpha=0) instance_destroy();
