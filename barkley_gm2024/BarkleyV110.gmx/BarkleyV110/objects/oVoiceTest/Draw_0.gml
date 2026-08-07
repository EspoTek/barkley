if (open=0) exit;
draw_set_alpha(0.94);
draw_set_color(make_color_rgb(24,24,88));
draw_rectangle(0,0,319,239,false);
draw_set_alpha(1);
sFont(Courier8,c_yellow,1);
draw_text(160,3,string_hash_to_newline("REALISTIC VOICE ACTING - CASTING"));
for (vi=0; vi<16; vi+=1) {
vcx=gx0+(vi mod 4)*gcw+(gcw-48) div 2;
vcy=gy0+(vi div 4)*gch;
if (vfc[vi]<0) draw_sprite_ext(sPump,0,vcx+10,vcy,0.375,0.375,0,c_white,1); //the Pump has no portrait, only himself
else draw_sprite(sFaces,vfc[vi],vcx,vcy);
if (vi=cur) {
draw_set_color(c_yellow);
draw_rectangle(vcx-2,vcy-2,vcx+49,vcy+50,true);
draw_rectangle(vcx-3,vcy-3,vcx+50,vcy+51,true);
draw_sprite(sDialogBlip,vblipf,vcx-14,vcy+19); //spinning basketball cursor
}
}
sFont(Courier8,c_yellow,1);
vtl=vnm[cur]+"  VOICE "+string(global.sat[vsat[cur]]+1)+"/"+string(vmax[cur])+"  (V cycles)";
draw_text(160,gy0+4*gch+1,string_hash_to_newline(vtl));
sFont(Courier8,c_ltgray,1);
draw_text(160,gy0+4*gch+12,string_hash_to_newline("CLICK or Z hear voice   X/F9 close"));
