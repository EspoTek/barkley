if (val0=-1) exit;
draw_set_color(val0);
act=mean(act,act,val1);
draw_set_alpha(act);
draw_rectangle(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+240,0);
draw_set_alpha(1);
