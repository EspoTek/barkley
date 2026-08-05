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
	instance_destroy();
}
