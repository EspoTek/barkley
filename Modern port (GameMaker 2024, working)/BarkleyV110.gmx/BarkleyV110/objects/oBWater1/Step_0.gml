cou+=1;
image_alpha-=0.04;
//if (cou>15) { cou=0; image_index+=1; image_alpha-=0.15; }
if (image_index>=4) instance_destroy();
if (image_alpha<0) instance_destroy();
if (y>flor) { y=flor; lop.shake=2; vspeed=-abs(vspeed/2); }
