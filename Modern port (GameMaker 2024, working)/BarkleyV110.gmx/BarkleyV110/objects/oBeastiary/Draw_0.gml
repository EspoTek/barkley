sV();
image_speed=global.rd/2;
ys=14;
sFont(Courier8,c_white);
draw_sprite(sBeastiary,0,x,y);
for (i=0; mn[i]!=""; i+=1) {
draw_text(x+15+4,y+2+3+(i*ys),string_hash_to_newline(mn[i]));
if (pos=i) draw_sprite(sDialogBlip,image_index,x+6,y+6+(i*ys));
}
draw_text(x+15+4,y+2+3+(15*ys),string_hash_to_newline("Leave"));
if (pos!=pmx) {
draw_sprite(sBeast,pos,x+153+25,y+3+3);
draw_text_ext(x+104+3,y+105-29+4,string_hash_to_newline(md[pos]),-1,210);
} else {
draw_sprite(sDialogBlip,image_index,x+6,y+6+(15*ys));
}
