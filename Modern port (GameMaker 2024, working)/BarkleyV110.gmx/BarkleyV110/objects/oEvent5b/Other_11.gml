if (sOvar(oIntro10,-1)=3 || sOvar(oIntro10,-1)=-1) exit;
global.dialog=1;
oBarkley.move="";
sOvar(oIntro10,3); 
sCinema(oFollower2,"dialog","There is no need to return, Barkley. Leave the dead to rest.",1);
sCinema(oBarkley,"dialog","Yes, Cyberdwarf. You are right...",1);
sCinema(oBarkley,"move","down");
sCinema(oBarkley,"code",cine_0118);
