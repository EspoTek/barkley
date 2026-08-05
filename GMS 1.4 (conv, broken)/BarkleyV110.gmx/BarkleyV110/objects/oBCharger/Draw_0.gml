x=oBHoopz.x-137;
y=oBHoopz.y;
lo+=.05+(lo/45.68); //.1, 11.42, .05,5.6, .015,2.781
yy+=lo;
if (yy>=ymax-5) { yy=ymax; oBHoopz.cfail=1; instance_destroy(); }
draw_sprite(sBCharger,0,x,y);
draw_sprite(sBCharger,1,x+ceil(yy),y);
