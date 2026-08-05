active=0;
spc=30;
instance_create(-999,-999,oHilight);
for (i=0; i<9; i+=1) {
sl[i]=instance_create(x+(spc*(i mod 3)),y+(spc*floor(i/3)),oShiftee);
sl[i].image_index=i; sl[i].image_speed=0;
slx[i]=sl[i].x;
sly[i]=sl[i].y;
}
con=sl[0];
sl[0].visible=0;
if (global.scheme[27]<2) {
sl[3].y+=spc;
sl[4].x-=spc;
sl[6].x+=spc;
sl[7].x+=spc;
sl[8].x-=spc;
sl[8].y-=spc;
}
with (oShiftee) { dx=x; dy=y; }
xmin=x;
ymin=y;
ymax=y+(spc*2);
xmax=x+(spc*2);
go="";
gog="";
oHilight.x=con.x; oHilight.y=con.y;
