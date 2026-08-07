draw_set_halign(fa_left);
if (revfade!=0 && view_current!=0) {
draw_set_alpha(revfade);
draw_set_color(c_black);
draw_rectangle(0,0,641,481,0);
draw_set_alpha(1);
revfade=min(1,revfade+0.05);
}
if (fade=0 || view_current=0) exit;
draw_set_alpha(fade);
draw_set_color(c_black);
draw_rectangle(0,0,641,481,0);
draw_set_alpha(1);
fade=max(0,fade-0.05);
