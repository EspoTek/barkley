function sS() {
	//Plays sound, if more than one randoms
	// Port note: GM6 argument[] had 16 zero-filled slots; use argument_count.
	// v1.20 official fix baked in: never re-play a sound that is still
	// playing (Vinceborg laser crash, AGDQ 2014).
	var dcf, ww;
	ww = 0;
	while (ww < argument_count && string(argument[ww]) != "0") ww += 1;
	if (ww <= 1) {
		if (!sound_isplaying(argument[0])) sound_play(argument[0]);
		return (argument[0]);
	}
	dcf = floor(random(ww));
	if (!sound_isplaying(argument[dcf])) sound_play(argument[dcf]);
	return (argument[dcf]);
}
