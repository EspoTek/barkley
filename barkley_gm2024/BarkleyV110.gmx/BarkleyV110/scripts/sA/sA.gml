function sA(argument0, argument1) {
	/*gm6argdefaults*/ if (argument0==undefined) argument0=0; if (argument1==undefined) argument1=0;
	// Port: the original streamed Music/*.mp3 through bgm.dll (name-mapped
	// mBattle -> _battle.mp3). The music now lives inside the sound resources
	// themselves, so play them natively. lastmusic keeps the 'check' contract.
	if (!variable_global_exists("lastmusic")) global.lastmusic = -1;
	//port: a BARKLEY_VOICETEST session runs silent -- no music competing with
	//the voice bloops being auditioned. Stop/check still work normally.
	if (instance_exists(oVoiceTest)) {
	if (argument0=="play" || argument0=="loop") { global.lastmusic=argument1; exit; }
	}
	if (argument0=="play" || argument0=="loop") {
		if (global.lastmusic!=-1) sound_stop(global.lastmusic);
		if (argument0=="play") sound_play(argument1);
		else sound_loop(argument1);
	} else if (argument0=="stop") {
		if (global.lastmusic!=-1) sound_stop(global.lastmusic);
		global.lastmusic=-1;
		return(1);
	} else if (argument0=="stopall") {
		global.lastmusic=-1;
		sound_stop_all();
		return(1);
	} else if (argument0=="check") {
		if (global.lastmusic=argument1) return(1);
		else return(0);
	}
	global.lastmusic=argument1;
}

function sa(argument0, argument1) {
	/*gm6argdefaults*/ if (argument0==undefined) argument0=0; if (argument1==undefined) argument1=0;
	// GM6 resolved script calls case-insensitively; the game calls sa() in 38 places.
	return sA(argument0, argument1);
}
