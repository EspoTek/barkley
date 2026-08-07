//112,144
event_inherited();
y-=2;
pos=0;
global.croom=RomTitle;
//port: GM6's blocking transitions + keyboard_clear meant a key still held on
//arrival could never operate this menu; the port's transitions are instant.
//Seed the release-and-repress gate (see Step): every menu key starts dead.
tkeys[0]=global.key_up;
tkeys[1]=vk_up;
tkeys[2]=global.key_down;
tkeys[3]=vk_down;
tkeys[4]=vk_space;
tkeys[5]=vk_enter;
tkeys[6]=global.key_action;
for (tk=0; tk<7; tk+=1) { tarmed[tk]=0; tup[tk]=0; }
sV();
