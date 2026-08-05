room_speed=30;
if (huh<30 && ll>=ww) { huh+=1; if (huh=30) { sound_play(mKaboom); fade=1; object1.fade=1; } exit; }
if (fade=1) { acc+=0.25; x+=acc; }
if (ll>=ww && x<320) exit;
if (mmm) {
if (ll>=ww) {
spd+=1;
__view_set( e__VW.YView, 0, spd );
}
}
//mmm=!mmm;
if (__view_get( e__VW.YView, 0 )>2970+100) { hp=1; __view_set( e__VW.YView, 0, 2970+100 ); }
if (hp=1 && sKey(vk_anykey)) game_restart();
exit;
if (keyboard_check(vk_control)) show_message(string(__view_get( e__VW.YView, 0 )));
if (keyboard_check(vk_space)) room_restart();
if (keyboard_check(vk_up)) spd+=10;
if (keyboard_check(vk_down)) spd-=10;
