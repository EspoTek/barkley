/// @description Checks to see if a given sound is playing.
/// @param index	sound index
/// @return {boolean} 
function sound_isplaying(argument0) {
	/*gm6argdefaults*/ if (argument0==undefined) argument0=0;
	return audio_is_playing( argument0 );



}
