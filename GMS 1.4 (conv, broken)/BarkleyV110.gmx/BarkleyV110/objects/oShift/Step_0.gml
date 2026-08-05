if (global.scheme[27]=2) exit;
with (oShiftee) if (x!=dx || y!=dy) exit;
event_user(2);
dx=con.x; dy=con.y;
oHilight.visible=active;
if (active=1) {
global.freeze=1;
if (sKey(global.key_up,1)) { dy-=spc; event_user(1); if (shoe!=-1) gog="down"; }
else if (sKey(global.key_down,1)) { dy+=spc; event_user(1); if (shoe!=-1) gog="up"; }
else if (sKey(global.key_right,1)) { dx+=spc; event_user(1); if (shoe!=-1) gog="left"; }
else if (sKey(global.key_left,1)) { dx-=spc; event_user(1); if (shoe!=-1) gog="right"; }
if (sKey(global.key_action,1)) go=gog;
else if (sKey(global.key_cancel,1)) { active=0; global.freeze=0; global.camera=oBarkley; }
}
global.con=con;
global.gx=con.x;
global.gy=con.y;
if (go="down") {
global.cx=con.x;
global.cy=con.y-spc;
event_user(0);
} else if (go="up") {
global.cx=con.x;
global.cy=con.y+spc;
event_user(0);
} else if (go="right") {
global.cx=con.x-spc;
global.cy=con.y;
event_user(0);
} else if (go="left") {
global.cx=con.x+spc;
global.cy=con.y;
event_user(0);
}
if (go!="") { gog=""; oHilight.x=con.x; oHilight.y=con.y; }
go="";
