if (view_current!=0) exit;
repeat (8) {
draw_set_alpha(0.75);
xc=x+5;
yc=y-20+random(40);
draw_set_color(make_color_rgb(64,128+random(125),64));
draw_line(xc,yc,xc+15+random(15),yc-5+random(10));
draw_set_alpha(1);
}
sD();
