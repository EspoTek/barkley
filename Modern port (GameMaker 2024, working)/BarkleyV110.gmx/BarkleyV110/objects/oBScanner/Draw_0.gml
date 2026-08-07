intensity+=dir;
if (intensity>29) dir=-2;
repeat (intensity) {
yy=target.y-(target.sprite_height/2)+random(target.sprite_height);
draw_set_color(make_color_rgb(32,128+random(128),32));
draw_line(target.x-(target.sprite_width/2),yy,target.x+(target.sprite_width/2),yy);
}
if (intensity<=0) instance_destroy();
