function sS() {
	//Plays sound, if more than one randoms
	// Port note: GM6 argument[] had 16 zero-filled slots; use argument_count.
	var dcf, ww;
	ww = 0;
	while (ww < argument_count && string(argument[ww]) != "0") ww += 1;
	if (ww <= 1) {
		sound_play(argument[0]);
		return (argument[0]);
	}
	dcf = floor(random(ww));
	sound_play(argument[dcf]);
	return (argument[dcf]);
}
