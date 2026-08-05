function sound_play(argument0) {
	/*gm6argdefaults*/ if (argument0==undefined) argument0=0;
	// ------------------------------------------------------------
	/// @description Plays the indicated sound once.
	/// @param index The index of the sound to play

	// GM6 had one instance per sound resource; restart rather than stack
	if (audio_is_playing(argument0)) audio_stop_sound(argument0);
	audio_play_sound( argument0, 10, false );



}
