if (sOvar(oIntro11,-1)=2) exit;
global.dialog=1;
oBarkley.move="";
sOvar(oIntro11,2); 
sCinema(oFollower0,"dialog","We can't go back, Charles. I'm sure Jordan's thugs are looking all over for us after the beating you gave him. Neo New York is our home, but it's far too dangerous to go back now.",1);
sCinema(oBarkley,"dialog","I know, Balthios. I know... I just...",1);
sCinema(oFollower2,"dialog","Just what? Your friend Balthios is correct, Barkley. The time for the comforts of home has long since passed, though with diligence and strength it may soon come again. For the time being, our destinies lie elsewhere - at the old Spalding factory.",1);
sCinema(oBarkley,"move","down");
sCinema(oBarkley,"code",cine_0120);
