if (depth=0) { sound_play(mParalyze); cou=0; depth=-240; }
cou+=1;
if (cou>60) instance_destroy();
width=24;
height=24;
for (h=0; h<5; h+=1) {
y=ystart+random(height);
xx=x;
yy=y-5+random(10);
xs=0;
for (i=0; i<5; i+=1) {
draw_set_color(make_color_rgb(200+random(55),200+random(55),0));
xs=width/5;
ys=-5+random(10);
draw_line(xx,yy,xx+xs,y+ys);
xx+=xs;
yy=y+ys;
}
}
