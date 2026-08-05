draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
if (fade=1) {
draw_set_color(c_black);
draw_set_alpha(alp);
draw_rectangle(0,0,321,321,0);
if (alp>=1) { global.titleform=1; room_goto_next(); }
draw_set_alpha(1);
alp+=0.03;
}
