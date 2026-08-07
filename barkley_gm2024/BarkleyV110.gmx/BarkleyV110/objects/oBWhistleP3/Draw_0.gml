
if (view_current!=0) exit;
repeat (str) {
draw_set_color(make_color_rgb(0,0,128+random(125)));
draw_line(x-5+random(10),y-5+random(10),x+100+random(25),y-20+random(40));
}
str-=3;
if (str=0) instance_destroy();

