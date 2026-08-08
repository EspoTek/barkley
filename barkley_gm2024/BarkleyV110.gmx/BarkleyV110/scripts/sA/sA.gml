function sA(argument0, argument1) {
	/*gm6argdefaults*/ if (argument0==undefined) argument0=0; if (argument1==undefined) argument1=0;
	// Port: the original streamed Music/*.mp3 through bgm.dll (name-mapped
	// mBattle -> _battle.mp3). The music now lives inside the sound resources
	// themselves, so play them natively. lastmusic keeps the 'check' contract.
	if (!variable_global_exists("lastmusic")) global.lastmusic = -1;
	//port: a BARKLEY_VOICETEST session runs silent -- no music competing with
	//the voice bloops being auditioned. Stop/check still work normally.
	//Gate on `open`, not mere existence: oVoiceTest is persistent, is created
	//once at Game Start and is never destroyed -- closing it only sets open=0.
	//Testing existence alone silenced music for the rest of the session once the
	//casting screen had been opened. oTitle0 and oStartConfig both test .open.
	if (instance_exists(oVoiceTest)) {
	if (oVoiceTest.open=1) {
	if (argument0=="play" || argument0=="loop") { global.lastmusic=argument1; exit; }
	}
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
	//NOT an alias of sA. GM6 has a separate script literally named "sa" (its
	//name and body sit between sBattleUp and sConvert in BarkleyV110.gm6), and
	//the port previously forwarded it to sA on the assumption that GM6 resolved
	//script names case-insensitively. It does not: sa(.1,0) is a beat marker at
	//0.1s in lane 0, not a music command, so all 38 calls in oSound's Create
	//did nothing, mmm never advanced, and the Tales of Game's logo lost every
	//oBeater it spawns in time with the music. Body below is GM6's verbatim.
	//Runs in the caller's scope, so sp/sl/mmm are oSound's instance variables.
	//drule sound deals
	sp[mmm]=argument0; sl[mmm]=argument1;
	mmm+=1;
	sp[mmm]=-1;
}
