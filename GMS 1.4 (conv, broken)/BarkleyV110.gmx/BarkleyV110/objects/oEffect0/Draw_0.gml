depth=oBarkley.depth+1;
x=oBarkley.x+12;
y=oBarkley.y+16;
repeat (num) {
dir=random(360);
lan=random(len);
xx=x+lengthdir_x(lan,dir);
yy=y+lengthdir_y(lan,dir);
draw_set_color(merge_color(c_lime,make_color_rgb(random(255),random(255),random(255)),0.1));
draw_line(x,y,xx,yy);
}
num+=0.5;
len-=1;
if (len<=0) instance_destroy();
