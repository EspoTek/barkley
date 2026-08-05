if (view_current!=0) exit;
draw_set_alpha((0.2+random(0.5))*intensity)
col = c_yellow;//merge_color(c_yellow,make_color_rgb(128-2*dark, 150-dark, 0),0.5);
//draw_set_blend_mode(bm_src_color);
//draw_set_blend_mode(bm_add);
draw_circle_color(x, y, size, col, c_red, false);
dark -= (1+random(3))*spd;
if (dark < 0 || size<0) {
   instance_destroy();
}
draw_set_alpha(1);
//draw_set_blend_mode(bm_normal);
