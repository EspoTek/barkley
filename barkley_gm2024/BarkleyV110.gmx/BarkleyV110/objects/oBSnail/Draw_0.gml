if (view_current!=0) exit;
if (dissolve=1) alp-=0.1;
if (alp<=0) { instance_destroy(); exit; }
draw_set_alpha(alp);
//
dis=min(12,point_distance(x,y,tx,ty));
dir=point_direction(x,y,tx,ty);
x+=lengthdir_x(dis,dir);
y+=lengthdir_y(dis,dir);
if (dis<1) { lock=1; speed=0; }
//
if (lock=0) {
ret=4+floor(random(4));
for (i=0; i<ret; i+=1) {
dir=random(360);
len=random(15);
col[i]=make_color_rgb(128+random(64),128+random(64),128+random(64));
xx[i]=x+lengthdir_x(random(15),dir);
yy[i]=y+lengthdir_y(random(15),dir);
}
xx[i]=-1;
}
for (i=0; i<ret; i+=1) {
draw_set_color(col[i]);
draw_line(x,y,xx[i],yy[i]);
}
draw_set_alpha(1);
