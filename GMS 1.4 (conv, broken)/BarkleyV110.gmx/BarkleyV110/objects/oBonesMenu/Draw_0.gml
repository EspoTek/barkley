//draw_wager(0,50);
sFont(Arial14,c_white,1);
draw_sprite(sBonesMenu,0,xpos,ypos);
//draw_sprite(sBonesMenu,1,xpos,ypos);
if (sel2=0 || sel2=1) draw_sprite(sBonesMenu,1,xpos,ypos);
//font_align=fa_center;
if (sel2=2) {
draw_text(xpos+160,ypos+25,string_hash_to_newline("Hundley's Roll"));
if (total1!=99) draw_text(xpos+160,ypos+45,string_hash_to_newline("Total - " + string(total1)));
}
if (sel2=3) {
draw_text(xpos+160,ypos+25,string_hash_to_newline("Barkley's Roll"));
if (total2!=99) draw_text(xpos+160,ypos+45,string_hash_to_newline("Total - " + string(total2)));
}
if (sel2=4) {
draw_text(xpos+160,ypos+110-55,string_hash_to_newline(winner));
draw_text(xpos+160,ypos+130-55,string_hash_to_newline("Hundley - " + string(total1)));
draw_text(xpos+160,ypos+150-55,string_hash_to_newline("Barkley - " + string(total2)));
}
//font_align=fa_left;
if (sel=0) draw_sprite(sDialogBlip,0,xpos+7,ypos+4);
else draw_sprite(sDialogBlip,0,xpos+76,ypos+4);
sFont(Courier8,c_white,0);
draw_text(xpos+210,ypos+3,string_hash_to_newline(string(wager)));
draw_text(xpos+270,ypos+3,string_hash_to_newline(string(global.gold)));
