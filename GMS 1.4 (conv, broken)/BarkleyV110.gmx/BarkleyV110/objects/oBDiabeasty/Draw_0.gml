event_inherited();
if (view_current!=0 || stop=1) exit;
if (grasp!=0) {
if (grasp=1) gou=min(45,gou+4);
else gou=max(0,gou-4);
draw_sprite_ext(sprite_index,5,x+gou,y,image_xscale,image_yscale,image_angle,col,alp);
}
draw_sprite_ext(sprite_index,floor(img),x,y,image_xscale,image_yscale,image_angle,col,alp);
event_user(15);
