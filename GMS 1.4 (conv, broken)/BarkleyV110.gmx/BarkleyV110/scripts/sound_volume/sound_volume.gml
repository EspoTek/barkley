/// @description Sets the volume of a given sound.
/// @param index 	The index of the sound to change the volume of.
/// @param value	The new global volume from 0 to 1.
function sound_volume(argument0, argument1) {
	/*gm6argdefaults*/ if (argument0==undefined) argument0=0; if (argument1==undefined) argument1=0;
	audio_sound_gain( argument0, argument1, 0);


}
