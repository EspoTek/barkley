event_inherited();
room_speed=30;
if (image_alpha!=1) exit;
if (sKey(global.key_up,1) || sKey(vk_up,1)) { sP(); pos=max(0,pos-1); }
if (sKey(global.key_down,1) || sKey(vk_down,1)) { sP(); pos=min(3,pos+1); }
if (sKey(vk_space,1) || sKey(vk_enter,1) || sKey(global.key_action,1)) {
sP(1);
if (pos=0) sFileData(0);
if (pos=1) sFileData(6);
if (pos=2) room_goto(RomConfig);
if (pos=3) game_end();
}
