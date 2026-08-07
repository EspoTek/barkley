if (global.selected=0) {
sBoss("oBBodyguard0");
sPos("save");
sCinema(oBarkley,"code",cine_0138);
sCinema(oBarkley,"code",cine_0006);
sCinema(oBarkley,"dialog","What do I want? I want you to get lost or get slammed.",1);
sCinema(oBarkley,"dialog","Suit:\\By you? Hah. Let's see what you've got.");
sOvar(oEvent13b,3.3);
sCinema(oBarkley,"code",cine_0473);
sCinema(oBarkley,"code",cine_0006); //mirror battle in other thug
} else if (global.selected=1) {
//Nothing
sCinema(oBarkley,"dialog","Suit:\\Then sit down like everyone else.");
} else {
//Rufus?
sCinema(oBarkley,"dialog","Are you rufus?",1);
sCinema(oBarkley,"dialog","Suit:\\Rufus is doing guard duty in one of these tunnels. Allard just transferred him from gate duty.");
sCinema(oBarkley,"dialog","Thanks.",1);
sCinema(oBarkley,"dialog","Suit:\\Now sit down like everyone else.");
}
