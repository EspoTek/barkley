event_inherited();
if (view_current!=0 || stop=1) exit;
if (web=1) {
repeat (8) {
cle=110+random(30);
draw_set_color(make_color_rgb(cle,cle,cle));
draw_line(x+20,y,target.x-10+random(20),target.y-20+random(10));
}
}
draw_sprite_ext(sprite_index,img,x,y,image_xscale,image_yscale,image_angle,col,alp);
event_user(15);
