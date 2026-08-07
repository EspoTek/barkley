//Syntax : Name, Color, Halign, Valign
//-1 will not change, 0 is default, over is value
if (argument0=0) draw_set_font(Courier8);
else if (argument0!=-1) draw_set_font(argument0);
if (argument1=0) draw_set_color(c_black);
else if (argument1!=-1) draw_set_color(argument1);
if (argument2=0) draw_set_halign(fa_left);
else if (argument2!=-1) draw_set_halign(argument2);
if (argument3=0) draw_set_valign(fa_top);
else if (argument3!=-1) draw_set_valign(argument3);