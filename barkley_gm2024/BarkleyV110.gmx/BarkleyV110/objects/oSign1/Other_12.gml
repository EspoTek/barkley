//Quest Choose
if (type=0) {
if (global.selected=0) {
type=1;
//sCinema(oBarkley,'dialog','Ghost Dad - Rank E Monster\Commissioned by - Juwanna Mann\Comments - "Yuckamundo! The [Ghost Dad] has been making a real mess of things down here in [Proto Neo New York]! Help us get rid of him and maybe even the [fog] on the road to the old [Spalding Building] will clear up!"\- Juwanna Mann');
sCinema(oBarkley,"dialog","Ghost Dad - Rank E Monster\\Commissioned by - Juwanna Mann\\Comments - \"Yuckamundo! The Ghost Dad has been making a real mess of things down here in Proto Neo New York! Help us get rid of him and maybe even the fog on the road to the old Spalding Building will clear up!\"\\- Juwanna Mann");
sCinema(oBarkley,"dialog","Accept this quest?",0,"Yeah","Nah");
sCinema(oBarkley,"code",cine_0464);
} else {
type=2;
sCinema(oBarkley,"dialog","Really leave monster quest board?",0,"Yeah","Nah");
sCinema(oBarkley,"code",cine_0464);
}
} else if (type=1) {
if (sOvar(object_index,-1)=2) { //if ghost dead
if (global.selected=0) {
sCinema(oBarkley,"dialog","This monster quest has already been completed!");
} else {
type=0;
sCinema(oBarkley,"code",cine_0465);
}
} else {
if (global.selected=0) {
global.doosh=0;
sOvar(object_index,1);
sCinema(oBarkley,"code",cine_0466);
sCinema(oBarkley,"cond",cine_0467);
sCinema(oBarkley,"dialog","Monster quest accepted!\\Report to Juwanna Mann for further details!");
} else {
type=0;
sCinema(oBarkley,"code",cine_0465);
}
}
} else if (type=2) {
if (global.selected=1) sCinema(oBarkley,"code",cine_0465);
} else if (type=5) {
if (global.selected=0) {
global.doosh=1;
sOvar(object_index,0);
sCinema(oBarkley,"code",cine_0468);
sCinema(oBarkley,"cond",cine_0467);
sCinema(oBarkley,"dialog","Monster quest cancelled!");
}
}
