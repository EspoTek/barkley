image_angle+=3+random(1);
if (hav=1) {
draw_sprite_ext(sShiner,0,xoff,yoff,1,1,image_angle,c_white,(1/20)*shn);
shn=max(0,shn-global.rd);
}
sou-=global.rd;
if (sou<0) {
instance_destroy();
hav=!hav;
xoff=x+random(16);
yoff=y+random(16);
sou=20+random(20);
shn=20;
}
