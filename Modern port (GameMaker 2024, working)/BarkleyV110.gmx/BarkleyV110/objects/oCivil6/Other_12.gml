if (global.selected=0) {
sOvar(object_index,1);
if (sItem("goldcheck",10)) {
//enough money
sItem("gold",-10);
sCinema(oBarkley,"dialog","Alright, here you go.",1);
} else {
//not enough
sItem("gold",-global.gold);
sCinema(oBarkley,"dialog","I don't have ten, but here's what I've got.",1);
sCinema(oBarkley,"dialog","Claude:\\I appreciate this, man.");
} 
} else if (global.selected=1) {
sOvar(object_index,2);
////dont pay
sCinema(oBarkley,"dialog","There are plenty of suckers out there. I'm not one of 'em, chump. Try that shit on the next sap that comes through.",1);
sCinema(oBarkley,"dialog","Claude:\\Whatever, man.");
}
