if (stage=0) {
if (global.selected=0) {
if (sOvar(object_index,-1)=-1) {
sCinema(oBarkley,"dialog","Looks like a regular desk. It has a drawer, but it's locked.",1);
} else {
sCinema(oBarkley,"dialog","I found a key in this desk. Doesn't look like anything else useful is here.",1);
}
sCinema(oBarkley,"code",cine_0396);
} else if (global.selected=1) {
if (sOvar(object_index,-1)=1) {
sCinema(oBarkley,"dialog","I don't need to use the desk again.",1);
} else if (sItem("Screwdriver")>0) {
sItem("Screwdriver",-1);
sCinema(oBarkley,"dialog","Alright, I pried open the drawer. Let's see what's inside...",1);
sCinema(oBarkley,"item","Desk Key",1);
sCinema(oBarkley,"dialog","Hmm, a key. I bet this opens the front door.",1);
sOvar(object_index,1)
} else {
sCinema(oBarkley,"dialog","The drawer is locked. The lock looks pretty shabby, but I can't force it open. If only I had something to pry it open...",1);
}
sCinema(oBarkley,"code",cine_0396);
} else if (global.selected=2) {
sCinema(oBarkley,"dialog","I'd need a shopping cart if I wanted to haul the desk away. I don't have one so it looks like that's not going to happen.",1);
sCinema(oBarkley,"code",cine_0396);
} else {
sCinema(oBarkley,"code",cine_0006);
}
}
