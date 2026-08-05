if (variable_local_exists("pos")=0) room_restart();
if (fade=1) image_alpha=min(1,image_alpha+0.05);
if (image_alpha!=1) exit;
if (sKey(vk_up,1)) { sP(); pos=max(0,pos-1); }
if (sKey(vk_down,1)) { sP(); pos=min(1,pos+1); }
if (sKey(vk_space,1) || sKey(vk_enter,1) || sKey(global.key_action,1)) {
if (pos=0) {
global.gameoverfade=1;
if (global.dieroom=9999) {
if (global.lastload=-9) sFileData(0); //never saved
else sFileData(2,abs(global.lastload)); //load last save
} else room_goto(global.dieroom);
}
if (pos=1) room_goto(RomTitle);
sound_stop_all();
sP(1);
}
