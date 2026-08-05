x=__view_get( e__VW.XView, 0 )+22;
y=__view_get( e__VW.YView, 0 )+80+16;
if (display=1) {
sFont(Courier8,c_black);
draw_sprite(sPaper,0,x,y);
base="I ask that she envelops my fragile heart,#And with her Magick, mends its cracks;#I ask that we grow old, never apart,#And that she";
if (res[0]!="") base=base+res[0]+"#";
if (res[1]!="") base=base+res[1]+"#";
if (res[2]!="") base=base+res[2]+"#";
draw_text(x+7+10,y+7+3,string_hash_to_newline(base));
}

