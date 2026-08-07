//112,144
event_inherited();
y-=2;
pos=0;
global.croom=RomTitle;
// Port: the menu may only respond to keys whose PRESS began while the menu was
// interactive. Arriving from a quit or a splash skip with the select key still
// down must not pick an option -- and the sKey eaten-table alone proved
// insufficient across instant room transitions (io state can reset it, see
// 498a100/780fd7f). Each key starts blocked and is armed in Step only after
// keyboard_check_direct -- a hardware poll that bypasses the io table entirely --
// has seen it up while the menu is live. Held keys therefore stay dead until
// physically released and re-pressed on the visible menu.
tkeys[0]=global.key_up;
tkeys[1]=vk_up;
tkeys[2]=global.key_down;
tkeys[3]=vk_down;
tkeys[4]=vk_space;
tkeys[5]=vk_enter;
tkeys[6]=global.key_action;
for (tk=0; tk<7; tk+=1) { tarmed[tk]=0; }
sV();
