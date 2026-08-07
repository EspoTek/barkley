function sElectric(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9, argument10) {
	/*gm6argdefaults*/ if (argument0==undefined) argument0=0; if (argument1==undefined) argument1=0; if (argument2==undefined) argument2=0; if (argument3==undefined) argument3=0; if (argument4==undefined) argument4=0; if (argument5==undefined) argument5=0; if (argument6==undefined) argument6=0; if (argument7==undefined) argument7=0; if (argument8==undefined) argument8=0; if (argument9==undefined) argument9=0; if (argument10==undefined) argument10=0;
	/*
	arg0=x1
	arg1=y1
	arg2=x2
	arg3=y2
	arg4=quality
	arg5=primitive
	arg6=electricity-color
	arg7=glow-color
	arg8=glow radius
	arg9=shakivness
	arg10=alpha of glow
	*/


	draw_set_blend_mode(bm_add)

	draw_primitive_begin(argument5)
	draw_set_color(argument6)
	draw_vertex(argument0,argument1)
	for(i=argument4;i<point_distance(argument0,argument1,argument2,argument3);i+=argument4)
	{
	draw_set_alpha(1)
	draw_vertex(argument0+(cos(degtorad(point_direction(argument0,argument1,argument2,argument3)))*i)+cos(degtorad(random(360)))*random(argument9),argument1-(sin(degtorad(point_direction(argument0,argument1,argument2,argument3)))*i)-sin(degtorad(random(360)))*random(argument9))


	draw_set_alpha(argument10)
	draw_circle_color(argument0+(cos(degtorad(point_direction(argument0,argument1,argument2,argument3)))*i)+cos(degtorad(random(360)))*random(argument9*0.5),argument1-(sin(degtorad(point_direction(argument0,argument1,argument2,argument3)))*i)-sin(degtorad(random(360)))*random(argument9*0.5),argument8,argument7,c_black,0)
	}
	draw_vertex(argument2,argument3)
	draw_primitive_end()


	draw_set_blend_mode(bm_normal)
	draw_set_alpha(1)


}
