event_inherited();
room_speed=30;
//port: arm each key only once the hardware has reported it UP on the title. A
//key still held from wherever we came from stays blocked until it is physically
//released; only presses that begin on this screen count.
for (tk=0; tk<7; tk+=1) { if (!keyboard_check_direct(tkeys[tk])) tarmed[tk]=1; }
//port: pre-formed entries (quit from a season, splash skip) used to arrive with
//the menu already open, so the first press picked NEW SEASON instantly. Match
//the attract path's two-stage flow instead: while the menu is hidden, the first
//fresh keypress summons it (reveal=3 fades it in via oIntror4's inherited Step)
//and is consumed -- keys re-block so the summoning press cannot also select.
if (image_alpha!=1) {
if (reveal=0) {
tsummon=0;
for (tk=0; tk<7; tk+=1) { if (tarmed[tk]=1 && sKey(tkeys[tk],1)) tsummon=1; }
if (tsummon=1) {
reveal=3;
for (tk=0; tk<7; tk+=1) { tarmed[tk]=0; }
}
}
exit;
}
if ((tarmed[0]=1 && sKey(global.key_up,1)) || (tarmed[1]=1 && sKey(vk_up,1))) { sP(); pos=max(0,pos-1); }
if ((tarmed[2]=1 && sKey(global.key_down,1)) || (tarmed[3]=1 && sKey(vk_down,1))) { sP(); pos=min(3,pos+1); }
if ((tarmed[4]=1 && sKey(vk_space,1)) || (tarmed[5]=1 && sKey(vk_enter,1)) || (tarmed[6]=1 && sKey(global.key_action,1))) {
sP(1);
if (pos=0) sFileData(0);
if (pos=1) sFileData(6);
if (pos=2) room_goto(RomConfig);
if (pos=3) game_end();
}
