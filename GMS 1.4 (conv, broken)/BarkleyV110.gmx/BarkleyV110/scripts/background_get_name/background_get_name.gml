/// @description Gets the name of a background.
/// @param index The background image asset to get the name of.
/// @returns {string} the name of the background
function background_get_name(argument0) {
	/*gm6argdefaults*/ if (argument0==undefined) argument0=0;

	return sprite_get_name(argument0);


}
