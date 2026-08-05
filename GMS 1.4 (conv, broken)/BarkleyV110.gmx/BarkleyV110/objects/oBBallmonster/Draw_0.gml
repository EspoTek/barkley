event_inherited();
if (view_current!=0 || stop=1) exit;
if (blaze=1) {
repeat (15) {
draw_set_color(make_color_rgb(128+random(120),32,32));
xer=random(180);
xe=fx+lengthdir_x(40,xer);
ye=fy+lengthdir_y(20,xer);
//draw_line(xe,ye,xe,ye-random(90));
draw_rectangle(xe,ye,xe+1,ye-random(90),0);
}
}
if (blaze=2) col=make_color_rgb(128+random(120),32,32);
if (inair=0) draw_sprite_ext(sprite_index,floor(img),x,y,image_xscale,image_yscale,image_angle,col,alp);
if (blaze=1) {
repeat (15) {
draw_set_color(make_color_rgb(128+random(120),32,32));
xer=180+random(180);
xe=fx+lengthdir_x(40,xer);
ye=fy+lengthdir_y(20,xer);
//draw_line(xe,ye,xe,ye-random(90));
draw_rectangle(xe,ye,xe+1,ye-random(90),0);
}
}
event_user(15);
