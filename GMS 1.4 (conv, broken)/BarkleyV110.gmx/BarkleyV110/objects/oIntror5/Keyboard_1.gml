// v1.20-style skip: form the title instantly in place instead of restarting
// the room (the old room_restart re-rolled music and the whole sequence).
if (dontkill=0) {
	global.titleform=0;
	if (!instance_exists(oTextFade)) instance_create(0,0,oTextFade);
	oTextFade.visible=1;
	oIntror6.image_alpha=1;
	oIntror2.ll=999;
	oIntror2.visible=1;
	oIntror3.visible=1;
	oTitle0.image_alpha=1;
	oIntror4.image_alpha=1;
	oIntror4a.image_alpha=1;
	oSideScroll.image_alpha=1;
	// The original skipped via room_restart(), and the seconds of room reload
	// meant the key was released long before oTitle0 became interactive. Skipping
	// in place makes the menu live on this very frame, so the same press that
	// skipped the attract also fell through sKey and picked New Game instantly.
	// Eat every key the menu listens to; sKey requires a physical re-press.
	key_eat(global.key_action);
	key_eat(vk_space);
	key_eat(vk_enter);
	key_eat(global.key_up);
	key_eat(global.key_down);
	key_eat(vk_up);
	key_eat(vk_down);
	instance_destroy();
}
