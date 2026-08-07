event_inherited();
room_speed=30;
if (image_alpha!=1) exit;
//port: arm each key only once the hardware has reported it UP while the menu is
//interactive. A key already held when the menu went live stays blocked until it
//is physically released; only presses that began on the visible menu count.
for (tk=0; tk<7; tk+=1) { if (!keyboard_check_direct(tkeys[tk])) tarmed[tk]=1; }
if ((tarmed[0]=1 && sKey(global.key_up,1)) || (tarmed[1]=1 && sKey(vk_up,1))) { sP(); pos=max(0,pos-1); }
if ((tarmed[2]=1 && sKey(global.key_down,1)) || (tarmed[3]=1 && sKey(vk_down,1))) { sP(); pos=min(3,pos+1); }
if ((tarmed[4]=1 && sKey(vk_space,1)) || (tarmed[5]=1 && sKey(vk_enter,1)) || (tarmed[6]=1 && sKey(global.key_action,1))) {
sP(1);
if (pos=0) sFileData(0);
if (pos=1) sFileData(6);
if (pos=2) room_goto(RomConfig);
if (pos=3) game_end();
}
