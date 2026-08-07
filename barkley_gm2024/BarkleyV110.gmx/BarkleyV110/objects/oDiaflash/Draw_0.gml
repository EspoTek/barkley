draw_set_color(c_white);
cou+=global.rd;
if (s0=0) sound_play(mBolt);
s0=1;
if (cou<10) {

draw_rectangle(__view_get( e__VW.XView, 0 )-1,__view_get( e__VW.YView, 0 )-1,__view_get( e__VW.XView, 0 )+321,__view_get( e__VW.YView, 0 )+241,0);
} else if (cou<20) draw_sprite_ext(sFlashpic,0,__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),2,2,0,c_white,1);
else if (cou<30) draw_rectangle(__view_get( e__VW.XView, 0 )-1,__view_get( e__VW.YView, 0 )-1,__view_get( e__VW.XView, 0 )+321,__view_get( e__VW.YView, 0 )+241,0);
else if (cou<40) {
//if (s1=0) sound_play(mBolt);
//s1=1;
draw_sprite_ext(sFlashpic,1,__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),2,2,0,c_white,1);
} else instance_destroy();
