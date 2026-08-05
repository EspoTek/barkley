cou+=global.rd;
if (cou>=stop) { event_user(0); exit; }
tx=val0.x+12;
ty=val0.y+16;
x=tx;
y=ty;
dir=val1;
repeat (5) {
direction=random(360);
xx=x-8+random(16);
yy=y-10+random(20);
rdis=20+random(10);
split=6+floor(random(6));
port=rdis/split;
draw_set_color(make_color_rgb(200,200,220+random(35)));
for (h=0; h<split; h+=1) {
dir2=random(360)-(80)+random(160);
draw_line(xx,yy,xx+lengthdir_x(port,dir2),yy+lengthdir_y(port,dir2));
xx=xx+lengthdir_x(port,dir2);
yy=yy+lengthdir_y(port,dir2);
}
}
if (dir=0) draw_sprite_ext(sWeapons,0,tx+18,ty+10,1,1,0,c_white,1);
else draw_sprite_ext(sWeapons,0,tx-18,ty+10,-1,1,0,c_white,1);
