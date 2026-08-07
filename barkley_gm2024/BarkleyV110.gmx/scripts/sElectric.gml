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