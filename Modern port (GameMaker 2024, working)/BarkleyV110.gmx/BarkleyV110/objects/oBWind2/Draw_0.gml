if (view_current!=0) exit;
xs=x;
ys=y;
xe=520;
ye=540;
repeat (intensity) {
draw_set_alpha(0.5);
xc=xs+random(xe);
yc=ys+random(ye);
draw_set_color(make_color_rgb(64,128+random(125),64));
draw_line(xc,yc,xc+15+random(15),yc-5+random(10));
draw_set_alpha(1);
}
