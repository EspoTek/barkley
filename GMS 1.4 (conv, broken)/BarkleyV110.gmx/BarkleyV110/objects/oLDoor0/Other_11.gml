if (sOvar(oLDoor1,-1)=-1) sOvar(oLDoor1,1);
global.dialog=1;
global.coice=id;
stage=0;
if (sOvar(oMack,-1)=-1 && sOvar(oIntroL3,-1)=3) {
with (oMack) event_user(1);
exit;
}
if (sItem("Immaculate Rod")>0 && sItem("Orb Sceptre")>0) sCinema(oBarkley,"dialog","You see a Tower Door.",0,"Examine Tower Door.","Use Keys on Tower Door.","Take Tower Door.","Leave Tower Door.");
else if (sItem("Orb Sceptre")>0) sCinema(oBarkley,"dialog","You see a Tower Door.",0,"Examine Tower Door.","Use Orb Sceptre on Tower Door.","Take Tower Door.","Leave Tower Door.");
else sCinema(oBarkley,"dialog","You see a Tower Door.",0,"Examine Tower Door.","Use Tower Door.","Take Tower Door.","Leave Tower Door.");
sCinema(oBarkley,"code",cine_0399);
