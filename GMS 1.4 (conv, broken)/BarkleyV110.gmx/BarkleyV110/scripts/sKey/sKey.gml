function sKey(argument0, argument1) {
	/*gm6argdefaults*/ if (argument0==undefined) argument0=0; if (argument1==undefined) argument1=0;
	//Syntax : Arg0 = Key to check ; Arg1 = If true, clear the key
	// GM6's keyboard_clear suppressed a held key until it was physically
	// re-pressed; the modern runner re-polls the OS each step, which made
	// menus fire every frame. Emulate the GM6 semantics with an eaten table.
	if (!variable_global_exists("__keyeaten")) global.__keyeaten = array_create(256, 0);
	var k = clamp(round(argument0), 0, 255);
	if (keyboard_check(k)) {
		if (global.__keyeaten[k]) return (0);
		if (argument1=1) global.__keyeaten[k]=1;
		return (1);
	}
	global.__keyeaten[k]=0;
	return (0);
}

function key_eat(argument0) {
	// Eat a (possibly held) key: GM6-keyboard_clear equivalent for the port.
	if (!variable_global_exists("__keyeaten")) global.__keyeaten = array_create(256, 0);
	var k = clamp(round(argument0), 0, 255);
	keyboard_clear(k);
	global.__keyeaten[k] = 1;
}
