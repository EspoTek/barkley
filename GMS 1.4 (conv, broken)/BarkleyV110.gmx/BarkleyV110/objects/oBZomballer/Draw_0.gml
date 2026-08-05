event_inherited();
if (view_current!=0 || stop=1) exit;
if (doing=2) {
if (jump=1) { img=3; cou+=1; if (cou=15) { jump=1.1; cou=0; } }
if (jump=1.1) { img=7; cou+=1; if (cou=20) { 
img=3; cou=0; jump=1.5; state=0; span=0.2;
welk=target;
org=point_distance(fx,fy,welk.fx,welk.fy);
hei=90;
oy=y;
sound_loop(mZomballer0);
} }
if (jump=1.5) {
y=oy;
x+=lengthdir_x(3,point_direction(fx,fy,welk.fx,welk.fy));
y+=lengthdir_y(3,point_direction(fx,fy,welk.fx,welk.fy));
erg=point_distance(fx,fy,welk.fx,welk.fy);
oy=y;
lrg=hei/(org/2);
if (erg>org/2) { erg=abs((org/2)-(erg-(org/2))); y-=lrg*erg; }
else { erg=abs(((org/2)-erg)-(org/2)); y-=lrg*erg; }
span+=0.01;
sound_volume(mZomballer0,span*2);
if (state=0) image_xscale-=span;
else image_xscale+=span;
if (image_xscale>1) state=0;
if (image_xscale<-1) state=1;
if (point_distance(fx,fy,welk.fx,welk.fy)<=20) { sS(mBDunk); jump=2; sDamage(doing); welk=slav; }
}
if (jump=2) {
y=oy;
x+=lengthdir_x(3,point_direction(fx,fy,welk.fx,welk.fy));
y+=lengthdir_y(3,point_direction(fx,fy,welk.fx,welk.fy));
erg=point_distance(fx,fy,welk.fx,welk.fy);
oy=y;
lrg=hei/(org/2);
if (erg>org/2) { erg=abs((org/2)-(erg-(org/2))); y-=lrg*erg; }
else { erg=abs(((org/2)-erg)-(org/2)); y-=lrg*erg; }
span-=0.01;
sound_volume(mZomballer0,span*2);
if (state=0) image_xscale-=span;
else image_xscale+=span;
if (image_xscale>1) state=0;
if (image_xscale<-1) state=1;
if (point_distance(fx,fy,welk.fx,welk.fy)<=2) { alarm[0]=15; sound_stop(mZomballer0); img=1; jump=0; doing=-1; image_xscale=1; }
}
draw_sprite_ext(sprite_index,img,x,y,image_xscale,image_yscale,0,col,alp);
if (img=7) draw_sprite_ext(sprite_index,6,x,y,image_xscale,image_yscale,0,col,alp);
if (img=3) draw_sprite_ext(sprite_index,6,x,y-8,image_xscale,image_yscale,0,col,alp);
} else {
if (img=0 && shake<=0) { img=1; state=0; cou=0; }
if (alarm[1]>0) { x+=2; }
if (img<=2 && img!=0) {
if (cou>0 && cou<10 && state=1) img=2;
else img=1;
if (kick=1 && cou>30 && state=1) { event_user(0); }
if (throwv=1 && cou<=5 && state=1) { alarm[1]=10; throwv=0; img=3; cou=-10; }
if (editing=0) { //dribble
if (cou<=0) state=1;
else if (cou>=42) state=0;
if (state=1) cou+=3;
else cou-=3;
} else { cou=0; state=1; }
} 
draw_sprite_ext(sprite_index,img,x,y,image_xscale,image_yscale,image_angle,col,alp);
if ((img<=2 && img!=0) || alarm[1]>0) draw_sprite_ext(sprite_index,6,x,y+cou,image_xscale,image_yscale,image_angle,col,alp);
}
event_user(15);
