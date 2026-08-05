if (keyboard_check(vk_shift)) exit;
draw_set_color(c_red);
draw_set_font(Doslike9);
draw_set_halign(fa_center);
depth=mas.slav.depth-1;
depth=-999;
if (mas.state!=0) draw_text(x+8,y+4,string_hash_to_newline(mas.lvl));
