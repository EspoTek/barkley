global.dialog=1;
if (sOvar(object_index,-1)>0) { //pay
sCinema(oBarkley,"dialog","Captain:\\I'm sorry, but if you want to go back to the mainland you'll have to wait while the ship is in repair.");
} else {
sCinema(oBarkley,"dialog","Captain:\\Passage to Liberty Island. You getting on?");
sCinema(oBarkley,"dialog","Is the ferry faster than the Underground Railroad?",1);
sCinema(oBarkley,"dialog","Captain:\\Depends on the weather. I can get you there in no time if the sea is easy. You coming along?");
sCinema(oBarkley,"dialog","Choose:",0,"Board the ferry.","Leave.");
sCinema(oBarkley,"code",cine_0462);
}
