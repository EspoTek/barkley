event_inherited();
if (view_current!=0 || stop=1) exit;
draw_sprite_ext(sprite_index,floor(img),x,y,image_xscale,image_yscale,image_angle,col,alp);
if (gun=1) draw_sprite(sBJordanGun,0,x+25,y-23);
if (gun=2) draw_sprite_ext(sBJordanGun,0,x-15,y+10,1,1,270,c_white,1);
if (gun=3) draw_sprite_ext(sBJordanGun,0,x+30,y-1,1,1,0,c_white,1);
event_user(15);
