/// @description Sets the blend mode for drawing.
/// @param mode The blend mode constant to set to 
function draw_set_blend_mode(argument0) {
	/*gm6argdefaults*/ if (argument0==undefined) argument0=0;
	gpu_set_blendmode( argument0 );


}
