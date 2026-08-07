global.dialog=1;
global.coice=id;
stage=0;
if (sItem("Triangle Rock")>0 && sItem("Pipe")>0) sCinema(oBarkley,"dialog","You see a Boulder.",0,"Examine Boulder.","Use Pipe and Triangle Rock on Boulder.","Take Boulder.","Leave Boulder.");
else sCinema(oBarkley,"dialog","You see a Boulder.",0,"Examine Boulder.","Use Boulder.","Take Boulder.","Leave Boulder.");
sCinema(oBarkley,"code",cine_0399);
