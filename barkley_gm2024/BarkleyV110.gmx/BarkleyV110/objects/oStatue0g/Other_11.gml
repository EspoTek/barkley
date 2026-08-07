global.dialog=1;
if (sOvar(object_index,-1)=-1) {
sOvar(object_index,1);
sCinema(oBarkley,"dialog","What's this?",1);
sCinema(oFollower2,"dialog","I'm... not sure, but I can sense a powerful energy coming from it.",1);
sCinema(oFollower0,"dialog","I can too, Cyberdwarf. I believe this is some sort healing font, just like the one in the B-Ball Catacombs. Touch it and see if it does anything.",1);
sCinema(oBarkley,"dialog","Okay.",1);
sCinema(oBarkley,"tint",c_white,0.5);
sCinema(oBarkley,"wait",1);
sCinema(oBarkley,"code",cine_0392);
sCinema(oBarkley,"tint",c_white,0);
sCinema(oBarkley,"dialog","B-ball energies restored!");
sCinema(oBarkley,"dialog","I can feel my b-ball energies coming back to me! I feel revitalized.",1);
sCinema(oFollower0,"dialog","Just as I thought. I'm sure we can return to this whenever we need healing.",1);
sCinema(oFollower2,"dialog","Good idea.",1);
} else {
sCinema(oBarkley,"tint",c_white,0.5);
sCinema(oBarkley,"wait",1);
sCinema(oBarkley,"code",cine_0392);
sCinema(oBarkley,"tint",c_white,0);
sCinema(oBarkley,"dialog","B-ball energies restored!");
}
