if (stage=0) {
if (global.selected=0) {
sCinema(oBarkley,"dialog","This rock is not like the others. It looks like it was manufactured to be this shape.",1);
sCinema(oBarkley,"code",cine_0396);
} else if (global.selected=1) {
sCinema(oBarkley,"dialog","Use the rock for what?",1);
sCinema(oFollower0,"dialog","Barkley who are you talking to?",1);
sCinema(oBarkley,"dialog","No one... Just taking some notes.",1);
sCinema(oBarkley,"code",cine_0396);
} else if (global.selected=2) {
sCinema(oBarkley,"dialog","Ok, let's take the rock. I have a good feeling about this.",1);
sCinema(oBarkley,"item","Triangle Rock",1);
sCinema(oBarkley,"code",cine_0414);
with (slav) instance_destroy();
sOvar(object_index,1);
} else {
sCinema(oBarkley,"code",cine_0006);
}
}
