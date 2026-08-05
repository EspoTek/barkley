global.dialog=1;
if (sOvar(object_index,-1)=-1) {
sCinema(oBarkley,"dialog","Attendant:\\Greetings, are you here to register for the Festival Tournament?");
sCinema(oBarkley,"dialog","What's that?",1);
sCinema(oBarkley,"dialog","Attendant:\\The Festival Tournament is the biggest arena in the B-Ball Dimension. Our finest warriors come together in a clash of arms and magic to fight to the last man and see which gladiator will stand triumphant. Our current champion, Kevin Garnett, stands undefeated for nearly ten years.");
sCinema(oBarkley,"dialog","What's the prize?",1);
sCinema(oBarkley,"dialog","Attendant:\\The prize is a very precious and one-of-a-kind item that many collectors would value highly.");
sCinema(oBarkley,"dialog","Wh-what if it's a golden b-ball...",1);
sCinema(oBarkley,"dialog","Attendant: Would you like to register, sir?",0,"Nah","Yeah");
sCinema(oBarkley,"code",cine_0045);
} else {
sCinema(oBarkley,"dialog","Attendant:\\Hello Mr. Barkley. The arena is currently closed, there are no tournaments going on right now.");
}
