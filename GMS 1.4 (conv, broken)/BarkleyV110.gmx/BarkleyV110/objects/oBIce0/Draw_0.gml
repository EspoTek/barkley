if (view_current!=0) exit;
x-=(global.ww/2)*pct;
y-=(global.hh/2)*pct;
draw_sprite_stretched_ext(sprite_index,0,x,y,(global.ww)*pct,(global.hh)*pct,c_white,0.5);
x+=(global.ww/2)*pct;
y+=(global.hh/2)*pct;
