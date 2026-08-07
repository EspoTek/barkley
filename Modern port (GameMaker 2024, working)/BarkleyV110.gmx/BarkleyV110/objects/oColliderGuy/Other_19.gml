if (stil=0 || global.cinema=1 || global.freeze=1) { stil=1; exit; }
if (global.posser!=-1) { move=""; exit; }
if (oBarkley.ghost=0) {
if (aware=0) {
sCinema(oBarkley,"tint",c_green,0.5);
global.batset=1;
} else if (oBarkley.t=t) {
sCinema(oBarkley,"tint",c_red,0.5);
global.batset=-1;
} else {
sCinema(oBarkley,"tint",c_gray,0.5);
global.batset=0;
}
global.freeze=1;
oBarkley.move="";
alarm[11]=15;
}
