draw_set_font(CreditsText);
draw_set_halign(fa_center);
draw_set_color(c_white);
draw_text_ext(x,y,string_hash_to_newline(cre),CreditsLineSep,-1);
for (i=0; i<18; i+=1) {
//draw_sprite(sFaces,i+1,10,y+(i*95));
draw_sprite(sFaces2,i+1,160-25,y+(yy[i]));
}
// The end card sits at a fixed spot below the roll (object0 parks the view at
// 2970+100 once it gets there), so the roll has to have scrolled clear of it by
// then -- see CreditsLineSep.
if (global.victorian=0) {
draw_text_ext(160,2990+100,string_hash_to_newline("SECRET UNLOCKED#You can now play Victorian Steampunk#mode when you choose new game!"),CreditsLineSep,-1);
draw_sprite(sFaces2,0,160-25,3080+100);
} else {
draw_text_ext(160,2990+100,string_hash_to_newline("YOU ARE THE BARKLEY MASTER# #\"with this accomplished the#galaxy rests easy...#until the next occurance.\" - hiratio"),CreditsLineSep,-1);
draw_sprite(sHiratio0,0,160-25,3100+100);
}

