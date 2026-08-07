//160,224
y+=5;
if (y>224) y=224;
xx=160+32;
yy=224;
draw_set_color(c_black);
draw_ellipse(xx-20,yy-10,xx+20,yy+10,0);
draw_sprite(sprite_index,0,x,y);
