global.dialog=1;
if (sOvar(oRaffle,-1)=-1) {
sCinema(oBarkley,"dialog","Rutherford:\\I insist that you stop rummaging through my house. I have told you what you needed to hear, the least I would expect is some cooperation from you.");
exit;
}
global.coice=id;
stage=0;
if (sOvar(object_index,-1)=1) {
sCinema(oBarkley,"dialog","You see a Work Table.",0,"Examine Work Table.","Use Work Table.","Take Screwdriver from Work Table.","Leave Work Table.");
sCinema(oBarkley,"code",cine_0399);
} else {
sCinema(oBarkley,"dialog","You see a Work Table.",0,"Examine Work Table.","Use Work Table.","Take Work Table.","Leave Work Table.");
sCinema(oBarkley,"code",cine_0399);
}
