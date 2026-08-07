event_inherited();
room_speed=30;
//port: the voice audition overlay owns input while open (dev tool, env-gated)
if (instance_exists(oVoiceTest)) { if (oVoiceTest.open=1) exit; }
//port: release-and-repress gate. A key may only operate the menu after it has
//been seen UP for 3 consecutive steps while the menu is visible -- so a key
//held across a quit, a splash skip, or the attract fade-in stays dead until it
//is explicitly released and pressed again on the visible menu. Single-frame
//arming proved untrustworthy (46b0b17/968c375): key state can flap for a
//frame around an instant room transition. keyboard_check (not _direct) so the
//gamepad bridge's synthesized keys obey the same rule.
if (image_alpha!=1) {
for (tk=0; tk<7; tk+=1) { tarmed[tk]=0; tup[tk]=0; }
exit;
}
for (tk=0; tk<7; tk+=1) {
if (keyboard_check(tkeys[tk])) tup[tk]=0;
else { tup[tk]+=1; if (tup[tk]>=3) tarmed[tk]=1; }
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
