//112,144
event_inherited();
y-=2;
pos=0;
global.croom=RomTitle;
// Port: paths into the title can arrive with a select key still held. Quitting
// a season goes straight from oStartmenu's confirm to room_goto(RomTitle), and
// with titleform=0 oSideScroll's Create makes this menu live on the room's
// first step -- the original's blocking transition left time to let go, the
// port's instant one does not, so the held press picked New Season before the
// menu was ever seen. Eat every key the menu reads; sKey then needs a fresh
// physical press. Covers all entries, alongside the attract-skip eats in
// oIntror5's any-key handler.
key_eat(global.key_action);
key_eat(vk_space);
key_eat(vk_enter);
key_eat(global.key_up);
key_eat(global.key_down);
key_eat(vk_up);
key_eat(vk_down);
sV();
