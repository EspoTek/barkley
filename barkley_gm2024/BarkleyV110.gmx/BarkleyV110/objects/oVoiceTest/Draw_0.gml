if (open=0) exit;
draw_set_alpha(0.92);
draw_set_color(make_color_rgb(24,24,88));
draw_rectangle(0,0,319,239,false);
draw_set_alpha(1);
sFont(Courier8,c_yellow,1);
draw_text(160,6,string_hash_to_newline("REALISTIC VOICE ACTING - TEST"));
vyy=28;
for (vi=0; vi<4; vi+=1) {
vcc=c_white; vmk="  ";
if (vi=cur) { vcc=c_yellow; vmk="> "; }
sFont(Courier8,vcc,0);
vv=global.sat[vsat[vi]];
draw_text(12,vyy+vi*40,string_hash_to_newline(vmk+vch[vi]));
draw_text(196,vyy+vi*40,string_hash_to_newline("VOICE "+string(vv+1)+"/3"));
sFont(Courier8,c_ltgray,0);
draw_text(26,vyy+vi*40+14,string_hash_to_newline(vdesc[vi,vv]));
}
sFont(Courier8,c_ltgray,1);
draw_text(160,206,string_hash_to_newline("ARROWS choose voice   Z play sample"));
draw_text(160,220,string_hash_to_newline("X or F9 close"));
