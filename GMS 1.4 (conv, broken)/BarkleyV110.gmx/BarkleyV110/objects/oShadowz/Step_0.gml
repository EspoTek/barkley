lll=0;
if (instance_exists(object44)) if (instance_exists(object52)=0) lll=1;
if (lll=0) {
if (instance_exists(object52)=1) y-=10;
else if (instance_exists(object51)=1) y+=10;
}

image_alpha-=0.1;
depth=object42.depth+1;
if (image_alpha<0) instance_destroy();
