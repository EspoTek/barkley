if (sOvar(object_index,-1)=1) exit;
global.dialog=1;
oBarkley.move="";
with (oPlayer) solid=0;
sOvar(object_index,1); 
repeat (15) sCinema(oBarkley,"move","right",4);
sCinema(oBarkley,"face","down");
sCinema(oBarkley,"catchup");
sCinema(oBarkley,"code",cine_0071);
sCinema(oFollower2,"move","right");
sCinema(oFollower2,"move","down");
sCinema(oFollower2,"face","left");
sCinema(oFollower0,"move","left");
sCinema(oFollower0,"move","down");
sCinema(oFollower0,"face","right");

sCinema(oFollower2,"dialog","We're at a crossroads, Charles. We need to see this diabetes expert on Liberty Island but there are two ways to get there: by ferry or by Underground Railroad.",1);
sCinema(oBarkley,"dialog","Which way is faster? We don't have much time, Cyberdwarf!",1);
sCinema(oFollower2,"dialog","I honestly don't know but I would prefer the Underground Railroad. It simply speaks to my Dwarven sensibility for caves.",1);
sCinema(oFollower0,"dialog","The only preference that I have, Charles, is that we make haste in our decision. Our method of transportation is up to you.",1);
sCinema(oFollower2,"dialog","If we're going to take the ferry, we should leave this parking lot from the right. The Underground Railroad is in the building at the top of the lot.",1);
sCinema(oBarkley,"dialog","I'll... I'll try to make my decision soon.",1);

sCinema(oFollower0,"move","right");
sCinema(oFollower0,"move","up");
sCinema(oFollower2,"move","left");
sCinema(oFollower2,"move","up");
sCinema(oBarkley,"code",cine_0072);
