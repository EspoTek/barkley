if (view_current!=0) exit;
x=__view_get( e__VW.XView, 0 )+5+15+8+20; //added =20
y=__view_get( e__VW.YView, 0 )+5+5;
fill=min(fill,length);
//draw bar
draw_sprite(sBComboMeter,0,x,y);
for (f=1; f<length-1; f+=1) {
draw_sprite(sBComboMeter,1,x+(f*4),y);
}
draw_sprite(sBComboMeter,2,x+(length*4)-3,y);
//draw fill
if (fill>=1) draw_sprite(sBComboMeter,3,x,y);
for (f=1; f<length-1; f+=1) {
if (fill>=f+1) draw_sprite(sBComboMeter,4,x+(f*4),y);
}
if (fill>=length) draw_sprite(sBComboMeter,5,x+(length*4)-3,y);
//draw moves
for (f=0; hit[f,0]!=-1; f+=1) {
draw_sprite(sBComboMove,hit[f,1],x+2+(hit[f,0]*4),y+2);
}
