global.dialog=1;
if (sOvar(object_index,-1)=1) { //pay
sCinema(oBarkley,"dialog","Claude:\\Thanks, man. I've been saving up but I wasn't getting anywhere. Pretty soon that tail's gonna be mine.");
} else if (sOvar(object_index,-1)=2) { //no pay
sCinema(oBarkley,"dialog","Claude:\\Get out of here man.");
} else {
sCinema(oBarkley,"dialog","Claude:\\Hey, man... could you spare me ten neo-shekels? I'm trying to save up for my surgery.");
sCinema(oBarkley,"dialog","Choose:",0,"Give the guy $10.","No damn way.");
sCinema(oBarkley,"code",cine_0026);
}
