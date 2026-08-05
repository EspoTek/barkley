draw_set_blend_mode(bm_add);
draw_set_alpha(alp);
draw_set_color(c_white);
draw_rectangle(0,0,800,800,0);
alp-=0.25;
draw_set_alpha(1);
draw_set_blend_mode(bm_normal);
if (alp<0) instance_destroy();
