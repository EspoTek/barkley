function sS() {
	//Plays sound, if more than one randoms
	var dcf,ww;
	if (argument1=0) {
	// v1.20 official fix: never spam a sound that is still playing (Vinceborg laser crash, AGDQ 2014)
	if (!sound_isplaying(argument0)) sound_play(argument0);
	return(argument0);
	} else {
	for (ww=0; argument[ww]!=0; ww+=1) ww=ww;
	dcf=floor(random(ww));
	sound_play(argument[dcf]);
	return(argument[dcf]);
	}


}
