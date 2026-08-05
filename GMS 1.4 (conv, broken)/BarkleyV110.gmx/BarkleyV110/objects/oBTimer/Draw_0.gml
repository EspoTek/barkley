if (view_current!=0) exit;
if (ud=1) { //68,44
x=oBBarkley.x-35;
y=oBBarkley.y-28;
if (dir=0) yy-=4;
else yy+=4;
if (yy<=ymin) { yy=ymin; dir=1; }
if (yy>=ymax) { yy=ymax; dir=0; }
draw_sprite(sBTimer0,0,x,y);
draw_sprite(sBBall0,0,x+9,y+5+yy);
}
if (lr=1) { //156,82
x=oBBarkley.x-77;
y=oBBarkley.y-41;
lo=abs(zy-zmax)/5;
if (zdir=0) zy-=5+lo;
else zy+=5+lo;
if (zy<=zmin) { zy=zmin; zdir=1; }
if (zy>=zmax) { zy=zmax; zdir=0; }
draw_sprite(sBTimer1,0,x,y);
draw_sprite(sBBall0,0,x+5+zy,y+9);
}
if (clock=1) {
x=__view_get( e__VW.XView, 0 )+5;
y=__view_get( e__VW.YView, 0 )+20;
draw_sprite(sBClock,0,x,y);
if (hhh<=0) { violate=1; exit; }
else violate=0;
hhh-=1;
bbb=floor(hhh/30);
xxx=floor((hhh mod 30)/3);
draw_sprite(sBClock,bbb+1,x,y);
draw_sprite(sBClock,11,x+9,y);
draw_sprite(sBClock,xxx+1,x+18,y);
}

