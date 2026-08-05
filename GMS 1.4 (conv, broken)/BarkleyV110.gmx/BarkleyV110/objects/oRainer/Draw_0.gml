draw_set_alpha(0.4);
repeat (hhh) {
draw_set_color(make_color_rgb(0,0,127+random(128)));
xx=__view_get( e__VW.XView, 0 )-10+random(330);
yy=__view_get( e__VW.YView, 0 )+random(240);
draw_line(xx,yy,xx-2+random(4),yy+random(20));
}
draw_set_alpha(1);
