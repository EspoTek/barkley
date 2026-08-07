global.dialog=1;
if (sOvar(oMalice,-1)=-1) {
sOvar(oMalice,.5);
sCinema(oBarkley,"dialog","Sha'kwan Dwarfmalice:\\Halt! Friend or foe?",0);
sCinema(oBarkley,"dialog","Friend or foe?",0,"Friend.","Foe.");
sCinema(oBarkley,"code",cine_0419);
} else if (sOvar(oMalice,-1)=.5) {
sCinema(oBarkley,"dialog","Sha'kwan "+"\"the Bastard of Muscles\""+" Dwarfmalice:\\It's... so cold. If only I had a patriotic quilt...",0);
} else if (sOvar(oMalice,-1)=1) {
sCinema(oFollower0,"dialog","The elderly Duergar seems to be sleeping under a highly patriotic quilt. Let's not wake him.",1);
}
