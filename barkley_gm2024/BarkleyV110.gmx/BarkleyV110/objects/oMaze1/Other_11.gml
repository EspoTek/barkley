//128+24
if (sOvar(oMaze2,-1)=1) exit;
global.dialog=1;
if (sOvar(object_index,-1)=-1) {
sOvar(object_index,1);
global.tamp=id;
sCinema(oFollower3,"dialog","It looks like you can press the crystal in, dad.",1);
sCinema(oBarkley,"code",cine_0424);
sCinema(oBarkley,"wait",1);
sCinema(oFollower0,"dialog","Hmm, I think this crystal may have something to do with unlocking the door we saw earlier.",1);
sCinema(oBarkley,"dialog","What kind of madman would do that? There's got to be a key laying around here somewhere, it doesn't make any sense why someone would use crystals to unlock a door.",1);
sCinema(oFollower2,"dialog","This is no ordinary man we are dealing with Barkley. Cuchlainn has been known to make dangerous donjon caverns with complex mechanics to drive those who wander them insane. They didn't call him a crazed space warlord for no reason, that's for certain.",1);
sCinema(oBarkley,"code",cine_0425); //15 seconds
exit;
}
image_index=cid; image_speed=0; global.tamp=id; with (oMaze0) { if (cid=global.tamp.cid) { image_index=cid; image_speed=0; } } global.cour[cid]=por*(20*30); sound_play(mOpen);
global.tamp=0;
with (oMaze1) if (image_index!=0) global.tamp+=1;
if (global.tamp>=4) {
sound_play(mGate);
with (oMaze1) global.cour[cid]=0;
sOvar(oMaze2,1); 
with (oMaze2) instance_destroy();
sCinema(oBarkley,"dialog","Huh? What was that?",1);
sCinema(oFollower0,"dialog","It sounds like something moved. Let's go back an investigate.",1);
}
sCinema(oBarkley,"code",cine_0006);
