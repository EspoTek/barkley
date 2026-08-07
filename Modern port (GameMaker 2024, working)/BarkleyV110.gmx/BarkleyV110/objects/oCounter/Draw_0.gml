global.giger=global.contam;
if (random(6)<global.giger) sound_play(mCounter);
xx=__view_get( e__VW.XView, 0 )+30;
yy=__view_get( e__VW.YView, 0 )+240-45;
draw_sprite(sprite_index,0,xx,yy);
draw_sprite_ext(sprite_index,1,xx,yy,1,1,-(global.giger*36)-2+random(4),c_white,1);
