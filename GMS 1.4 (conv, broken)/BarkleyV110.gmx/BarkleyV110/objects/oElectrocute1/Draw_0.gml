cou+=global.rd;
if (cou>=stop) { event_user(0); exit; }
tx=xstart;
ty=ystart;
x=tx;
y=ty;
repeat (5) {
direction=random(360);
xx=x-8+random(16);
yy=y-10+random(20);
rdis=30+random(20);
split=8+floor(random(8));
port=rdis/split;
draw_set_color(make_color_rgb(200,200,220+random(35)));
for (h=0; h<split; h+=1) {
dir2=random(360)-(80)+random(160);
draw_line(xx,yy,xx+lengthdir_x(port,dir2),yy+lengthdir_y(port,dir2));
xx=xx+lengthdir_x(port,dir2);
yy=yy+lengthdir_y(port,dir2);
}
}
