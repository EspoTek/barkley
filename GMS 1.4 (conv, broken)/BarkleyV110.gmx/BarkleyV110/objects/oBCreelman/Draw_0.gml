event_inherited();
if (view_current!=0 || stop=1) exit;
draw_sprite_ext(sprite_index,img,x,y,image_xscale,image_yscale,image_angle,col,alp);
if (ill=1) {
draw_sprite_ext(sprite_index,12,x-7,y-16,image_xscale,image_yscale,-45+random(90),col,alp/2);
draw_sprite_ext(sprite_index,12,x-7,y-16,image_xscale,image_yscale,-45+random(90),col,alp/2);
}
event_user(15);
