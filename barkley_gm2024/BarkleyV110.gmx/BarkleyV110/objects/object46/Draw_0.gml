draw_set_font(font2);
draw_set_color(c_gray);
draw_set_halign(fa_center);
repeat (4) {
draw_text(__view_get( e__VW.XView, 0 )+160-10+random(20),__view_get( e__VW.YView, 0 )+yy-5+random(10),string_hash_to_newline("Chaos Dunk"));
}
draw_set_color(c_white);
draw_text(__view_get( e__VW.XView, 0 )+160,__view_get( e__VW.YView, 0 )+yy,string_hash_to_newline("Chaos Dunk"));
draw_set_halign(fa_left);

