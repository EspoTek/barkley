global.dialog=1;
if (sOvar(object_index,-1)=-1) {
sOvar(object_index,1);
with (slav) instance_destroy();
sCinema(oFollower0,"dialog","Wait, look. Something's in here. It looks like a zauber!",1);
sCinema(oFollower0,"item","Time Zauber",1);
sCinema(oFollower0,"dialog","There is an old octoroon saying, Barkley. \"One "+"man's trash is another man's"+" treasure.\"",1);
sCinema(oBarkley,"dialog","Words to live by, Balthios. Words to live by.",1);
} else {
sCinema(oBarkley,"dialog","No more zaubers in here.",1);
}

