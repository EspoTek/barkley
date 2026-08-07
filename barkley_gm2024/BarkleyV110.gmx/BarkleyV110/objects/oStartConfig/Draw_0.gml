if (global.control=img || (img=6 && global.control=7)) draw_sprite(srp,0,x,y); //port: box 6 hosts controls 6+7
else draw_sprite(srp,1,x,y);
image_speed=global.rd/2;
if (global.edit!=img) image_index=0;
if (img!=6) draw_sprite(sDialogBlip,image_index,xs+(spc*global.sat[img]),ys-2); //port: box 6 shows values as text
sFont(Courier8,c_white,1);
if (img=6) {
//port: two settings share this box; ">" marks the active line
vfl=""; vvl="";
if (global.control=6) vfl="> ";
if (global.control=7) vvl="> ";
vvo="Off"; if (global.sat[14]=1) vvo="On";
draw_text(x+75,y+3,string_hash_to_newline(vfl+"FILTER "+global.crtname[global.sat[6]]));
draw_text(x+75,y+24,string_hash_to_newline(vvl+"VOICES "+vvo));
} else if (img=5) {
draw_text(x+75,y+3,string_hash_to_newline(s0));
draw_text(x+75,y+24,string_hash_to_newline(s1));
} else {
draw_text(x+84,y+3,string_hash_to_newline(s0));
draw_text(x+84,y+24,string_hash_to_newline(s1));
}
