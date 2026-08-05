if (fade=-1) exit;
if (qqq=1) {
draw_set_color(c_black);
draw_rectangle(0,0,321,241,0);
exit;
}
draw_set_alpha(fade);
draw_set_color(c_white);
fade=max(0,fade-0.02);
draw_rectangle(0,0,321,241,0);
draw_set_alpha(1);
if (fade=0 && qqq=0) { oIntror2.visible=1; alarm[1]=155; fade=-1; qqq=2; }
