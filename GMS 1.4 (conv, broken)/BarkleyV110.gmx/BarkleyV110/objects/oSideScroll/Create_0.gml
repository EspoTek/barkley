event_inherited();
x=5;
y=0;
yy=0;
img=10;
spl=80;
if (global.titleform=0) {
instance_create(0,0,oTextFade);
oTextFade.visible=1;
oIntror6.image_alpha=1;
oIntror2.ll=999;
oIntror2.visible=1;
oIntror3.visible=1;
oTitle0.image_alpha=1;
oIntror4.image_alpha=1;
oIntror4a.image_alpha=1;
image_alpha=1;
with (oIntror5) instance_destroy();
}
if (sA("check",mSpace)=0) sA("loop",mSpace);
