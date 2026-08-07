if (keyboard_check_pressed(vk_f9)) { open=1-open; playing=0; }
if (open=0) exit;
if (sKey(global.key_up,1) || sKey(vk_up,1)) cur=max(0,cur-1);
if (sKey(global.key_down,1) || sKey(vk_down,1)) cur=min(3,cur+1);
if (sKey(global.key_left,1) || sKey(vk_left,1)) { global.sat[vsat[cur]]=max(0,global.sat[vsat[cur]]-1); sConfig(1); }
if (sKey(global.key_right,1) || sKey(vk_right,1)) { global.sat[vsat[cur]]=min(2,global.sat[vsat[cur]]+1); sConfig(1); }
if (sKey(global.key_action,1) || sKey(vk_enter,1)) {
playing=14; pw=0; pt=0;
plsnd=asset_get_index(vname[cur]+string(global.sat[vsat[cur]]));
}
if (sKey(global.key_cancel,1)) { open=0; playing=0; }
//sample sentence: a stream of bloops with word-boundary gaps, matching the
//in-dialog cadence (~66ms per letter at 30fps)
if (playing>0) {
pt-=1;
if (pt<=0) {
pw+=1;
vbase=max(1,round(sVoxRate(vch[cur])/33)); //frames per bloop at this character's cadence
if (pw mod 4=0) pt=vbase+3; else pt=vbase;
if (plsnd>=0) audio_play_sound(plsnd,10,false,0.85,0,0.94+random(0.12));
playing-=1;
}
}
