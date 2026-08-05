global.dialog=1;
if (sOvar(object_index,-1)=-1) {
sOvar(object_index,1);
sCinema(oBarkley,"dialog","Moe:\\Welcome to the B-Ball Dimension dating service. How can I help you folks today?");
sCinema(oFollower3,"dialog","You going on a date, dad?",1);
sCinema(oBarkley,"dialog","No Hoopz. I... I don't know if I could do that to Maureen.",1);
sCinema(oFollower0,"dialog","I've already devoted my life to another.",1);
sCinema(oBarkley,"dialog","What? I didn't know you had a girlfriend Balthios.",1);
sCinema(oFollower0,"dialog","Not a girlfriend, Barkley. The zaubers.",1);
sCinema(oBarkley,"dialog","Well Hoopz is too young to go on a date. That leaves...",1);
sCinema(oFollower3,"dialog","Cyberdwarf.",1);
sCinema(oFollower2,"dialog","I, uh... I don't think a girl would want to go out with a basketball-skinned freak like me...",1);
sCinema(oFollower0,"dialog","That's not true, Cyberdwarf. Basketball skin is found attractive in many cultures.",1);
sCinema(oBarkley,"dialog","When was the last time you felt a woman's touch or grasped a woman's firm tookis?",1);
sCinema(oFollower2,"dialog","It has been a long time and... I have been lonely.",1);
sCinema(oBarkley,"dialog","Well what are you waiting for? Come on, man! Go for it!",1);
sCinema(oBarkley,"dialog","Moe:\\Have you made up your mind? Would you like to go on a date with one of our lovely ladies?");
sCinema(oBarkley,"dialog","Go on a date?",0,"Yes.","No.");
sCinema(oBarkley,"code",cine_0058);
} else if (sOvar(object_index,-1)=1) {
sCinema(oBarkley,"dialog","Moe:\\Have you made up your mind? Would you like to go on a date with one of our lovely ladies?");
sCinema(oBarkley,"dialog","Go on a date?",0,"Yes.","No.");
sCinema(oBarkley,"code",cine_0058);
} else {
sCinema(oBarkley,"dialog","Moe:\\I'm sorry Mr. Cyberdwarf. All applicants that meet your requirements are currently unavailable.");
}
