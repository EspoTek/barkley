if (active=1) {
x-=8*global.rd;
if (x<0) instance_destroy();
image_speed=global.rd/3;
}
//draw_set_blend_mode(bm_subtract);
draw_sprite_ext(sDiabeast2,image_index,x,y,2,2,0,c_black,.75);
//draw_set_blend_mode(bm_normal);
