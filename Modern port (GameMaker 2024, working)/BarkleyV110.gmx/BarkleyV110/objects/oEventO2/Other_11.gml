if (sOvar(object_index,-1)=-1) {
sOvar(oEventO2,.5);
sBoss("Ghastly");
sPos("save");
global.dialog=1;
oBarkley.move="";
sCinema(oBarkley,"code",cine_0137);
sCinema(oBarkley,"wait",4);
sCinema(oBarkley,"dialog","Did you guys hear that?",1);
sCinema(oFollower2,"dialog","Hear what?",1);
sCinema(oBarkley,"code",cine_0137);
sCinema(oBarkley,"wait",4);
sCinema(oBarkley,"dialog","There it is again!",1);
sCinema(oFollower0,"dialog","Look out! Someone's heading towards us from the shadows!",1);
sCinema(oFollower0,"dialog","???:\\Nya hya hya hya!");
sCinema(oBarkley,"code",cine_0138);
sCinema(oBarkley,"code",cine_0006);
} else if (sOvar(object_index,-1)=1) {
instance_destroy();
sPos("load");
global.dialog=1;
oBarkley.move="";
sCinema(oFollower0,"dialog","I can't believe it... We killed the Ghastly Darklord.",1);
sCinema(oBarkley,"dialog","Who?",1);
sCinema(oFollower0,"dialog","Ghastly Darklord is the minion of Zerugon the evil time lord created thousands of years ago in the Shade Realm. It was said that defeating him is impossible without at least a level 40 bard present.",1);
sCinema(oFollower3,"dialog","Hey dad, he dropped something!",1);
sCinema(oBarkley,"item","Golden Potato",1);
sCinema(oBarkley,"code",cine_0139);
}
