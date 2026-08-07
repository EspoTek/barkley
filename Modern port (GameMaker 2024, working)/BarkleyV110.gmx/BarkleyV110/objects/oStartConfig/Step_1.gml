if (key_makestuff.doall!=-1) exit;
if (instance_exists(oCRTTune)) exit; //port: tune-CRT overlay owns input
if (img=0) {

if (sKey(global.key_up,1) || sKey(vk_up,1)) { sP();
if (global.control=5) { global.control=9; }
else if (global.control=6) { global.control=5; }
else if (global.control=9) { global.control=9; }
else if (global.edit=-1) global.control=max(0,global.control-1);
}

if (sKey(global.key_down,1) || sKey(vk_down,1)) { sP();
if (global.control=9) { global.control=5; }
else if (global.control=5) { global.control=6; }
else if (global.control=6) { global.control=6; }
else if (global.edit=-1) global.control=min(4,global.control+1);
}

if (sKey(global.key_action,1) || sKey(vk_enter,1)) { sP(1);
if (global.edit=4) {
if (global.sat[4]=0) { key_init(); sConfig(0); }
if (global.sat[4]=1) { 
room_set_view(RomTest,0,1,0,0,320,240,0,0,320,240,0,0,0,0,-1);
with (key_makestuff) { event_user(1); } sConfig(1); sFileData(0); global.croom=RomTest; global.cvx=144; global.cvy=64; room_goto(RomTest); 
}
if (global.sat[4]=2) { with (key_makestuff) { event_user(1); } sConfig(1); sound_stop_all(); game_restart(); }
} else {
if (global.control=9) with (key_makestuff) event_user(0);
else if (global.edit!=-1) global.edit=-1;
else if (global.control=6) { instance_create(0,0,oCRTTune); } //port: open the tune-CRT screen
else global.edit=global.control;
}

}

if (sKey(global.key_cancel,1)) { sP(-1); global.edit=-1; }
if (sKey(global.key_left,1) || sKey(vk_left,1)) { sP();
if (global.edit!=-1) global.sat[global.edit]=max(0,global.sat[global.edit]-1);
else { if (global.control<3) global.control=9; else if (global.control=3) global.control=5; else if (global.control=4) global.control=6; }
}
if (sKey(global.key_right,1) || sKey(vk_right,1)) { sP();
if (global.edit!=-1) global.sat[global.edit]=min(global.tt[global.edit]-1,global.sat[global.edit]+1);
else { if (global.control=9) global.control=0; else if (global.control=5) global.control=3; else if (global.control=6) global.control=4; }
}
}
