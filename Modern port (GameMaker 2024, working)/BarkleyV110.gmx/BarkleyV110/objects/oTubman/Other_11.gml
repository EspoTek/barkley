global.dialog=1;
if (sOvar(oLiberty,-1)<0) {
if (sOvar(object_index,-1)=2) {
sCinema(oBarkley,"dialog","Harriet Tubman:\\Listen, I asked you to check out that bugbear. Me? I gotta keep watch for ones on the tracks. A bugbear on the tracks is no good for anyone.");
} else if (sOvar(object_index,-1)=3) { //pay
sCinema(oBarkley,"dialog","Harriet Tubman:\\I'm sorry, but I can't take you back to the mainland until I get the Underground Railroad fully repaired.");
} else if (sOvar(object_index,-1)=1) {
sCinema(oBarkley,"dialog","Harriet Tubman:\\So, you've changed your mind?");
sCinema(oBarkley,"dialog","Choose:",0,"Board the train.","Leave.");
sCinema(oBarkley,"code",cine_0483);
} else {
sCinema(oBarkley,"dialog","Harriet Tubman:\\You're the first people to come here in weeks. You getting on?");
sCinema(oBarkley,"dialog","We need to get to Liberty Island as soon as possible. Is the Underground Railroad faster than the ferry?",1);
sCinema(oBarkley,"dialog","Harriet Tubman:\\I've been conducting for as long as I can remember and there's no way to tell. It all depends on the weather. If the weather is good, the ferry can get you there much faster than the Underground Railroad. Inclement weather though, and you're best off with the Railroad. Never can tell about the weather nowadays though. So, you getting on?");
sCinema(oBarkley,"dialog","Choose:",0,"Board the train.","Leave.");
sCinema(oBarkley,"code",cine_0483);
}
} else { //outskirt
sCinema(oBarkley,"dialog","Harriet Tubman:\\You getting on? I'm not going back to Proto Neo New York, I'm heading towards the outskirts of the city.");
sCinema(oBarkley,"dialog","Yeah, that's where we're going too.",1);
sCinema(oBarkley,"dialog","Harriet Tubman:\\Alright, then get on. I'm gonna be leaving soon.");
sCinema(oBarkley,"dialog","Choose:",0,"Board the train.","Leave.");
sCinema(oBarkley,"code",cine_0483);
}
