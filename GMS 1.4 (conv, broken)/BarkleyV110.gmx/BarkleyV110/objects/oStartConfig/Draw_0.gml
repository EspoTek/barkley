if (global.control=img) draw_sprite(srp,0,x,y);
else draw_sprite(srp,1,x,y);
image_speed=global.rd/2;
if (global.edit!=img) image_index=0;
draw_sprite(sDialogBlip,image_index,xs+(spc*global.sat[img]),ys-2);
sFont(Courier8,c_white,1);
if (img=5) {
draw_text(x+75,y+3,string_hash_to_newline(s0));
draw_text(x+75,y+24,string_hash_to_newline(s1));
} else {
draw_text(x+84,y+3,string_hash_to_newline(s0));
draw_text(x+84,y+24,string_hash_to_newline(s1));
}
