/// @description Returns the resource name of the given sound.
/// @param index	sound index
/// @returns {string} resource name for the given sound
function sound_get_name(argument0) {
	/*gm6argdefaults*/ if (argument0==undefined) argument0=0;
	return audio_get_name( argument0 );



}
