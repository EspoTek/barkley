if (stage=0) {
if (global.selected=0) {
sCinema(oBarkley,"dialog","A four foot long pipe. It looks pretty sturdy.",1);
sCinema(oBarkley,"code",cine_0396);
} else if (global.selected=1) {
sCinema(oBarkley,"dialog","I'll touch the pipe.",1);
sCinema(oFollower0,"dialog","What are you doing Barkley?",1);
sCinema(oBarkley,"dialog","Uhh, I'm not sure. I thought I would use this pipe.",1);
sCinema(oFollower0,"dialog","You can't just use a pipe alone. You need to use it on something.",1);
sCinema(oBarkley,"dialog","Yeah, I know that.",1);
sCinema(oBarkley,"code",cine_0396);
} else if (global.selected=2) {
if (sOvar(oLChair,-1)=2) {
sCinema(oBarkley,"dialog","He said we could have it, so I'm going to take it.",1);
sCinema(oBarkley,"item","Pipe",1);
sCinema(oBarkley,"code",cine_0411);
sOvar(object_index,1);
with (slav) instance_destroy();
} else {
sOvar(oLChair,1);
sCinema(oBarkley,"dialog","I guess I could use this for something, I'll take it.",1);
sCinema(oFollower0,"dialog","Rutherford probably owns this pipe, you should ask him if we can have it first.",1);
sCinema(oBarkley,"dialog","Yeah, you're right.",1);
}
} else {
sCinema(oBarkley,"code",cine_0006);
}
}
