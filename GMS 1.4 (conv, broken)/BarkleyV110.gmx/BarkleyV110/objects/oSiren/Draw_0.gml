draw_set_color(make_color_rgb(cou,0,0));
draw_set_alpha(cou/300);
draw_rectangle(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),__view_get( e__VW.XView, 0 )+321,__view_get( e__VW.YView, 0 )+240,0);
draw_set_alpha(1);
draw_set_font(font1);
draw_set_color(c_yellow);
draw_text(__view_get( e__VW.XView, 0 )+xx,__view_get( e__VW.YView, 0 ),string_hash_to_newline(gtt));
