function sound_loop(argument0) {
	/*gm6argdefaults*/ if (argument0==undefined) argument0=0;
	// ------------------------------------------------------------
	/// @description Loops the indicated sound
	/// @param index The index of the sound to loop

	// GM6 single-instance semantics: never stack a second copy of a loop
	if (audio_is_playing(argument0)) audio_stop_sound(argument0);
	audio_play_sound( argument0, 10, true );



}
