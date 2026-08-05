function sKey(argument0, argument1) {
	/*gm6argdefaults*/ if (argument0==undefined) argument0=0; if (argument1==undefined) argument1=0;
	//Syntax : Arg0 = Key to check ; Arg1 = If true, this is a discrete press
	// arg1==1 was originally keyboard_check + keyboard_clear to approximate a single
	// press; that only worked at GM6's ~30fps. On the modern runner a held tap spans
	// several frames, so it retriggered menus. Edge-detect instead, and still clear so
	// only one handler consumes the press this frame (preserves the original semantics).
	if (argument1=1) {
	if (keyboard_check_pressed(argument0)) {
	keyboard_clear(argument0);
	return (1);
	}
	return (0);
	}
	if (keyboard_check(argument0)) {
	return (1);
	}
	return (0);


}
