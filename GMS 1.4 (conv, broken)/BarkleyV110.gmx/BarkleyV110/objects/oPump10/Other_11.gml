global.dialog=1;
if (sOvar(object_index,-1)=-1) {
sOvar(object_index,1);
stage=0;
sCinema(oBarkley,"dialog","Pump:\\I'm surprised you made it this far, Barkley. Men of your calibur rarely go far in life. I wouldn't be surprised if you didn't even know the difference between Ar Tonelico - Melody of Elemia and Growlanser 3. Still, my desire to quiz you is overbearing. If you can prove yourself to be even marginally adequate in the field of vidcons I will give you something nice.");
sCinema(oBarkley,"dialog","What? I don't know anything about vidcons.",1);
sCinema(oFollower3,"dialog","Don't worry dad, I got it.",1);
sCinema(oBarkley,"dialog","Are you sure Hoopz?",1);
sCinema(oFollower3,"dialog","Take a chill pill, dad. I'm a vidcon expert.",1);
sCinema(oBarkley,"dialog","I'm... I'm proud of you son.",1);
sCinema(oBarkley,"dialog","Pump:\\Hmph, so you say. I will start you off with an easy one. What is the proper shortening of \"console video game\"?");
sCinema(oBarkley,"dialog","Proper shortening of \"console video game\"?",0,"Con-vid Game","Vid Con","V-Con","Vidcon");
sCinema(oBarkley,"code",cine_0429);
} else {
sCinema(oBarkley,"dialog","Pump:\\Whether your opinion on the popular manga-ka Koichi Su-");
sCinema(oBarkley,"dialog","Spare me the diatribe, chump. If you even so much as open your mouth I will jam you so hard that Necron 5 will have a bruise.",1);
sCinema(oBarkley,"code",cine_0428);
}

