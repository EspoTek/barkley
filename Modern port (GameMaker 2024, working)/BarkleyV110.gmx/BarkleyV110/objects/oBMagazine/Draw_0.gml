if (view_current!=0) exit;
x=__view_get( e__VW.XView, 0 )+160-35;
y=__view_get( e__VW.YView, 0 )+5+5; //-10 from losing buklet
if (oBHoopz.clip>0) {
draw_sprite_ext(sBMagazine,oBHoopz.clip-1,x+2,y+2,1,1,0,c_black,.25);
draw_sprite(sBMagazine,oBHoopz.clip-1,x,y);
}

