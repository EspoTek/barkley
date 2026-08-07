event_inherited();
if (view_current!=0 || stop=1) exit;
if (shadow=1) {
draw_sprite_general(sprite_index,img,0,0,sprite_width,sprite_height-smt,x-sprite_xoffset,y-sprite_yoffset+smt,image_xscale,image_yscale,image_angle,col,col,col,col,alp);
} else draw_sprite_ext(sprite_index,img,x,y,image_xscale,image_yscale,image_angle,col,alp);
if (breath=1) draw_sprite_ext(sprite_index,13,x,y,image_xscale,image_yscale,image_angle,col,alp);
event_user(15);
