global.dialog=1;
if (sOvar(object_index,-1)=1) {
sCinema(oBarkley,"dialog","Nope, nothing here.",1);
} else {
sOvar(object_index,1);
sCinema(oBarkley,"dialog","Anything in this trashcan?",1);
sCinema(oFollower0,"dialog","Ugh, that's disgusting.",1);
sCinema(oBarkley,"dialog","Do we want to find the key or not?",1);
sCinema(oFollower0,"dialog","Whatever, look.",1);
sCinema(oBarkley,"dialog","...nope. Nothing here.",1);
}
