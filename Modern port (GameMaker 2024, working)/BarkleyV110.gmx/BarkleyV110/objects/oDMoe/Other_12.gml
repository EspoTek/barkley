if (global.selected=0) {
sOvar(object_index,2);
global.nofollow=1;
sCinema(oFollower2,"dialog","O-okay. Alright, I will!",1);
sCinema(oBarkley,"tint",c_black,1);
sCinema(oBarkley,"wait",0.5);
sCinema(oCyberdwarf,"face","left");
sCinema(oBarkley,"code",cine_0055);
sCinema(oBarkley,"wait",0.5);
sCinema(oBarkley,"tint",c_black,0);
sCinema(oBarkley,"wait",1);
sCinema(oFollower2,"code",cine_0056,1);
sCinema(oFollower2,"cond",cine_0057,1);
sCinema(oBarkley,"dialog","Moe:\\Excellent! What traits in particular are you looking for in a partner?");
sCinema(oFollower2,"dialog","Applebottom.",1);
sCinema(oBarkley,"dialog","Moe:\\Anything else?");
sCinema(oFollower2,"dialog","Only applebottoms.",1);
sCinema(oBarkley,"dialog","Moe:\\Okay, just a moment, let me process your request.");
sCinema(oDMoe,"face","up");
sCinema(oBarkley,"wait",1.5);
sCinema(oBarkley,"dialog","Moe:\\Hmmm, only one woman matches your request, Ivory Latta, a member of the North Carolina WNBA team.");
sCinema(oDMoe,"face","right");
sCinema(oCyberdwarf,"face","right");
repeat (5) sCinema(oIvory,"move","down");
repeat (3) sCinema(oIvory,"move","left");
sCinema(oIvory,"dialog","H-hello...",1);
sCinema(oFollower2,"dialog","Sh...she's beautiful...",1);
sCinema(oBarkley,"dialog","Moe:\\You two can talk in the back room. Why don't you go there and get to know each other a little bit better?");
sCinema(oFollower2,"dialog","That... that sounds like a good idea...",1);
sCinema(oBarkley,"effect","fadein",3);
global.roz=RomDimensionSim1;
} else {
sCinema(oBarkley,"dialog","Moe:\\Please come back if you ever change your mind!");
}
