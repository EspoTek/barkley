posx=floor(__view_get( e__VW.XView, 0 ))+gxx;
if (pos="top") {
posy=floor(__view_get( e__VW.YView, 0 )+2)+gyy;
} else if (pos="center") {
posy=floor(__view_get( e__VW.YView, 0 )+120-40)+gyy;
} else {
posy=floor(__view_get( e__VW.YView, 0 )+240-80)+gyy;
}
//posx+=0.5;
//posy+=0.5;
draw_set_font(Courier8); nx=85-jjj; ny=-3;
if (border=1) {
draw_set_alpha(.25);
draw_set_color(c_black); posx+=2; posy+=2;
draw_text(posx+nx+1,posy+ny,string_hash_to_newline(name));
draw_text(posx+nx-1,posy+ny,string_hash_to_newline(name));
draw_text(posx+nx,posy+ny+1,string_hash_to_newline(name));
draw_text(posx+nx,posy+ny-1,string_hash_to_newline(name));
draw_set_alpha(1); posx-=2; posy-=2;
if (jjj=0) { 
draw_sprite_ext(sDialogBox,1,posx+2,posy+2,1,1,0,c_black,0.25);
draw_sprite(sDialogBox,1,posx,posy);
} else {
draw_sprite_ext(sDialogBox,0,posx+2,posy+2,1,1,0,c_black,0.25);
draw_sprite(sDialogBox,0,posx,posy);
}
}
else if (border=2) {
draw_set_alpha(0.25); draw_set_color(c_blue); 
draw_rectangle(posx,posy,posx+320,posy+80,0);
draw_set_alpha(1); 
}
uuu=string_height(string_hash_to_newline("l"));
for (ttt=0; ttt<5; ttt+=1) {
draw_set_color(c_white);
draw_text(posx+68+19-jjj,posy+(ttt*uuu)+13,string_hash_to_newline(cmessage[ttt])); //used to be 60

if (option[ttt]!="0") {
draw_set_color(c_white);
draw_text(posx+88+19-jjj,posy+(ttt*uuu)+13,string_hash_to_newline(option[ttt]));
}

}
draw_set_font(Namefont);
//draw_set_halign(fa_center);
//draw_set_valign(fa_middle);
if (mdone=1) chat=0;
qx=17;
qy=15;
if (face!=0) {
//draw_sprite(sFaces,0,posx+qx,posy+qy);
if (chat=0) {
if (global.victorian=0) draw_sprite(sFaces,face,posx+qx,posy+qy);
else draw_sprite(sFaces0,face,posx+qx,posy+qy);
} else {
if (global.victorian=0) draw_sprite(sFacesa,face,posx+qx,posy+qy);
else draw_sprite(sFaces0a,face,posx+qx,posy+qy);
}
}
draw_set_color(c_black);
draw_text(posx+nx+1,posy+ny,string_hash_to_newline(name));
draw_text(posx+nx-1,posy+ny,string_hash_to_newline(name));
draw_text(posx+nx,posy+ny+1,string_hash_to_newline(name));
draw_text(posx+nx,posy+ny-1,string_hash_to_newline(name));
draw_set_color(c_white);
draw_text(posx+nx,posy+ny,string_hash_to_newline(name));
draw_set_halign(fa_left);
draw_set_valign(fa_top);
image_speed=global.rd/2;
if (option[0]!="0") {
draw_sprite(sDialogBlip,image_index,posx+25,posy+14+(cho*uuu));
exit;
}
if (mdone=1) draw_sprite(sDialogBlip,image_index,posx+303,posy+63);
