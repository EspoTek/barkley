global.dialog=1;
global.coice=id;
stage=0;
if (sItem("Desk Key")>0) sCinema(oBarkley,"dialog","You see a Locked Door.",0,"Examine Locked Door.","Use Desk Key on Locked Door.","Take Locked Door.","Leave Locked Door.");
else sCinema(oBarkley,"dialog","You see a Locked Door.",0,"Examine Locked Door.","Use Locked Door.","Take Locked Door.","Leave Locked Door.");
sCinema(oBarkley,"code",cine_0399);
