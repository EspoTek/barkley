if (sOvar(object_index,-1)!=-1) exit;
global.dialog=1;
oBarkley.move="";
sOvar(object_index,1);
with (oEvent1b) instance_destroy();
sCinema(oFollower2,"dialog","This is the tomb of a baller that was lost in the purge, one Dikembe Mutombo.",1);
sCinema(oBarkley,"dialog","He was an amazing baller and a personal friend of mine. Do you mind if I pay my respects?",1);
sCinema(oFollower2,"dialog","Yes, but be quick about it.",1);
