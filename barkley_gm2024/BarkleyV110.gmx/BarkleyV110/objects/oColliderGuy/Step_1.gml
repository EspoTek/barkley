event_inherited();
if (stil=0 || global.cinema=1 || global.freeze=1) { path_speed=0; speed=0; rtm=move; move=""; stil=1; exit; }
rtm="nope";
if (global.posser!=-1) { move=""; path_speed=0; exit; }
if (aware=0 && global.cinema=0) {
if (vis.alert=1 && oBarkley.ghost=0) {
aware=1;
mp_grid_path(global.grid,global.path[pth],x,y,oBarkley.x+12,oBarkley.y+26,0);
path_start(global.path[pth],rspd,0,1);
zou=0;
}
} else move="";
//Dormant
if (aware=0) {
if (start=0) { zou=0; xdx=x; ydy=y; start=1; }
zou+=global.rd;
if (zou>45) start=2;
if (arr[aco]="w") { if (zou>30) { start=2; }}
if (arr[aco]="u")  { move="up"; if (y<=ydy-16) { y=ydy-16; start=2; }}
if (arr[aco]="ur") { move="upright"; if (y<=ydy-16 && x>=xdx+16) { y=ydy-16; x=xdx+16; start=2; }}
if (arr[aco]="ul") { move="upleft"; if (y<=ydy-16 && x<=xdx-16) { y=ydy-16; x=xdx-16; start=2; }}
if (arr[aco]="d") { move="down"; if (y>=ydy+16) { y=ydy+16; start=2; }}
if (arr[aco]="dr") { move="downright"; if (y>=ydy+16 && x>=xdx+16) { y=ydy+16; x=xdx+16; start=2; }}
if (arr[aco]="dl") { move="downleft"; if (y>=ydy+16 && x<=xdx-16) { y=ydy+16; x=xdx-16; start=2; }}
if (arr[aco]="r") { move="right"; if (x>=xdx+16) { x=xdx+16; start=2; }}
if (arr[aco]="l") { move="left"; if (x<=xdx-16) { x=xdx-16; start=2; }}
if (arr[aco]="fu") { t=0; start=2; }
if (arr[aco]="fr") { t=1; start=2; }
if (arr[aco]="fd") { t=2; start=2; }
if (arr[aco]="fl") { t=3; start=2; }
if (start=2) { move=""; start=0; aco+=1; if (arr[aco]="-1") aco=0; }
} else {
zou+=global.rd;
if (zou>15 || (point_distance(x,y,oBarkley.x,oBarkley.y)<30 && zou>5)) { 
bnn=mp_grid_path(global.grid,global.path[pth],x,y,oBarkley.x+12,oBarkley.y+26,0);
path_start(global.path[pth],rspd,0,1);
if (bnn=0) path_speed=0;
zou=0; 
}
}
//facing
if (aware=1) {
allwalk=1;
walk=1;
spd=0.00000000000000001;
if (y<lvy) t=0;
if (y>lvy) t=2;
if (x<lvx) t=3;
if (x>lvx) t=1;
}
lvx=x;
lvy=y;
if (aware=1 && oBarkley.ghost=1) path_speed=0;
else path_speed=rspd;
//collision
if (place_meeting(x,y,oBarkley)) event_user(9);
