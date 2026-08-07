timer+=1;
with (oBattler) {
if (enemy=1) oDebugger.vog=id;
}
if (room!=RomInter) if (vog.doing!=-1) draw_text(5,5,string_hash_to_newline(vog.move[vog.doing]));
draw_set_color(c_fuchsia);
draw_text(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),string_hash_to_newline(global.b_acc));
draw_text(5,5,string_hash_to_newline(string(floor(timer/30))));
