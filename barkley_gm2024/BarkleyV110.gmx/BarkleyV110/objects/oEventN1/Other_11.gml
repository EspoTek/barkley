if (sOvar(object_index,-1)=1) exit;
sOvar(object_index,1);
if (sItem("Dimension Whistle")=1) {
global.dialog=1;
oBarkley.move="";
sCinema(oFollower2,"dialog","Barkley, we still haven't used the Dimension Whistle yet. Now would be a good time to use it.",1);
}
with (oEventN1) instance_destroy();
