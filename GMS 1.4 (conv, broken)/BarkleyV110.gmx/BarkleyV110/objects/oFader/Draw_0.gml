if (fade=3) exit;
if (fade=2) {
draw_rectangle(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+240,0);
instance_destroy();
exit;
}
cou+=global.rd/7;
if (fade=0) { oController.sco=0; draw_set_alpha(min(1,cou)); }
else draw_set_alpha(abs(1-min(1,cou)));
draw_set_color(c_black);
draw_rectangle(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+240,0);
draw_set_alpha(1);
if (cou>1) {
instance_destroy();
if (un=1) global.freeze=0;
if (un=2) room_goto(global.roomer);
if (un=3) room_goto(nj);
}
