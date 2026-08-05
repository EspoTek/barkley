if (ghost=1) alp=0.4+random(0.2);
else alp=1;
if (ambattler=1) { y-=26; x-=12; }
if (shadow=1) draw_sprite_ext(sShadow,0,x,y+24,1,1,0,c_white,0.3);
if (sprite_get_width(sprt)<60) draw_sprite(sprt,subber,x,y);
else draw_sprite_part_ext(sprt,0,ll,tt,24,32,floor(x),floor(y+jump),1,1,c_white,alp);
if (ambattler=1) { y+=26; x+=12; }
