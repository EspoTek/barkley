focus=0;
x=master.x;
y=master.y;
if (instance_exists(oBarkley)) {
cx=oBarkley.x+12;
cy=oBarkley.y+28;
} else {
cx=-1;
cy=-1;
}
pt=point_distance(x,y,cx,cy);
dr=point_direction(x,y,cx,cy);
dra=point_direction(cx,cy,x,y);
if (master.t=0) direction=90;
if (master.t=1) direction=0;
if (master.t=2) direction=270;
if (master.t=3) direction=180;
fff=direction;
direction=direction-(dspr/2);
m1=direction;
direction=direction+(dspr);
m2=direction;
direction=fff-180;
direction=direction-(dspr/2);
m1a=direction;
direction=direction+(dspr);
m2a=direction;
if (pt<=yspr && pt>blind) {
if (dr>=m1 && dr<=m2) { if (collision_line(x,y,cx,cy,oWall,0,0)=-4) { focus=1; alert=1; } }
if (dra>=m1a && dra<=m2a) { if (collision_line(x,y,cx,cy,oWall,0,0)=-4) { focus=1; alert=1; } }
}
direction=fff;
