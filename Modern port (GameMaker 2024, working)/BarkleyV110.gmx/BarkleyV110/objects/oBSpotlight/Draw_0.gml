if (view_current!=0) exit;
x-=width/2;
y-=height;
ww=width;
hh=height;
yss=200;
xss=300;
ald=make_color_rgb(alp,alp,alp);
draw_set_blend_mode(bm_subtract);
draw_sprite_stretched_ext(sprite_index,0,x,y,width,height,ald,1);
draw_set_color(ald);
draw_rectangle(x-0.5,y+hh+yss,x-xss,y-yss,0);
draw_rectangle(x-0.5,y-0.5,x+ww-0.5,y-yss,0); //small
draw_rectangle(x-0.5,y+hh-0.5,x+ww-0.5,y+hh+yss,0); //small
draw_rectangle(x+ww-0.5,y+hh+yss,x+ww-0.5+xss,y-yss,0);
draw_set_blend_mode(bm_normal);
x+=width/2;
y+=height;

