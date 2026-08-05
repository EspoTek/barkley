draw_set_font(CreditsText);
draw_set_halign(fa_center);
draw_set_color(c_white);
draw_text(x,y,string_hash_to_newline(cre));
for (i=0; i<18; i+=1) {
//draw_sprite(sFaces,i+1,10,y+(i*95));
draw_sprite(sFaces2,i+1,160-25,y+(yy[i]));
}
if (global.victorian=0) {
draw_text(160,2990+100,string_hash_to_newline("SECRET UNLOCKED#You can now play Victorian Steampunk#mode when you choose new game!"));
draw_sprite(sFaces2,0,160-25,3080+100);
} else {
draw_text(160,2990+100,string_hash_to_newline("YOU ARE THE BARKLEY MASTER# #\"with this accomplished the#galaxy rests easy...#until the next occurance.\" - hiratio"));
draw_sprite(sHiratio0,0,160-25,3100+100);
}

