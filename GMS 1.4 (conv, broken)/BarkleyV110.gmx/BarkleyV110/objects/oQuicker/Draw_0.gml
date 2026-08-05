if (got>0) {
got-=global.rd;
draw_set_alpha(0.5);
draw_set_color(c_black);
draw_rectangle(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+240,0);
draw_set_alpha(1);
draw_sprite_ext(sQuickDid,global.passed,__view_get( e__VW.XView, 0 )+160,__view_get( e__VW.YView, 0 )+120,4,4,0,c_white,1);
if (got<=0) instance_destroy();
exit;
}
if (time>0) {
if (global.firstshen=0) time-=global.rd;
if (time<=0) { event_user(1); exit; }
if (sKey(global.key_right,1)) {
if (key=0) event_user(0); else event_user(1);
}
if (sKey(global.key_up,1)) {
if (key=1) event_user(0); else event_user(1);
}
if (sKey(global.key_left,1)) {
if (key=2) event_user(0); else event_user(1);
}
if (sKey(global.key_down,1)) {
if (key=3) event_user(0); else event_user(1);
}
if (sKey(global.key_action,1)) {
if (key=4) event_user(0); else event_user(1);
}
if (sKey(global.key_cancel,1)) {
if (key=5) event_user(0); else event_user(1);
}
g=!g;
draw_set_alpha(0.5);
draw_set_color(c_black);
draw_rectangle(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+240,0);
draw_set_alpha(1);
draw_sprite(sQuickPress,key,__view_get( e__VW.XView, 0 )+160,__view_get( e__VW.YView, 0 )+60);
if (g=1) draw_sprite(sQuickKey,key,__view_get( e__VW.XView, 0 )+160,__view_get( e__VW.YView, 0 )+120);
}
