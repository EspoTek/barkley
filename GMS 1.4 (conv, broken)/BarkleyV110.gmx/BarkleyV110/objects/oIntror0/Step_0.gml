image_xscale=max(1,image_xscale-(image_xscale/100));
image_yscale=image_xscale;
x-=1+cou;
cou+=0.05;
if (cou>12) fade=1;
if (x+sprite_width<room_width) x=-(sprite_width-320);
room_speed=40;
