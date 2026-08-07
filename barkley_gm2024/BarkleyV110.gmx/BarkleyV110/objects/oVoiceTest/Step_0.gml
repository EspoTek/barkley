if (keyboard_check_pressed(vk_f9)) { open=1-open; playing=0; }
if (open=0) exit;
if (sKey(global.key_up,1) || sKey(vk_up,1)) { if (cur>=4) cur-=4; }
if (sKey(global.key_down,1) || sKey(vk_down,1)) { if (cur<12) cur+=4; }
if (sKey(global.key_left,1) || sKey(vk_left,1)) { if (cur mod 4>0) cur-=1; }
if (sKey(global.key_right,1) || sKey(vk_right,1)) { if (cur mod 4<3) cur+=1; }
vplay=0;
if (sKey(global.key_action,1) || sKey(vk_enter,1)) vplay=1;
//mouse: map window coords through oDisplay's letterbox rect to 320x240
if (variable_global_exists("disp_dw")) {
if (global.disp_dw>0) {
vmx=(window_mouse_get_x()-global.disp_ox)*320/global.disp_dw;
vmy=(window_mouse_get_y()-global.disp_oy)*240/global.disp_dh;
if (vmx>=gx0 && vmy>=gy0 && vmx<gx0+4*gcw && vmy<gy0+4*gch) {
vmc=(vmy-gy0) div gch;
vmr=(vmx-gx0) div gcw;
cur=min(15,max(0,vmc*4+vmr));
if (mouse_check_button_pressed(mb_left)) vplay=1;
}
}
}
if (vplay=1) {
plsnd=sVox(vk[cur]); //leads resolve their sat[15..18] variant inside sVox
pvb=max(1,round(sVoxRate(vk[cur])/33));
playing=14; pw=0; pt=0;
}
if (keyboard_check_pressed(ord("V"))) {
if (vvar[cur]>1) { global.sat[15+cur]=(global.sat[15+cur]+1) mod 3; sConfig(1); }
}
if (sKey(global.key_cancel,1)) { open=0; playing=0; }
//sample sentence: bloop stream with word-boundary gaps at this character's cadence
if (playing>0) {
pt-=1;
if (pt<=0) {
pw+=1;
if (pw mod 4=0) pt=pvb+3; else pt=pvb;
if (plsnd>=0) audio_play_sound(plsnd,10,false,0.85,0,0.94+random(0.12));
playing-=1;
}
}
