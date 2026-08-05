cou+=0.05;
yy-=5+cou;
if (yy<-240) yy+=240;
draw_sprite(sprite_index,0,__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 )+yy);
draw_sprite(sprite_index,0,__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 )+yy+240);

