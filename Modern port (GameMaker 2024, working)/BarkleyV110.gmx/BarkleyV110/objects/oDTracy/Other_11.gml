global.dialog=1;
if (sOvar(object_index,-1)=-1) { //pay
sOvar(object_index,1);
sCinema(oBarkley,"dialog","What are you doing?",1);
sCinema(oBarkley,"dialog","Tracy McGrady:\\What does it look like? I'm packing recently bred b-balls to ship.");
sCinema(oBarkley,"dialog","Recently bred b-balls? What?",1);
sCinema(oBarkley,"dialog","Tracy McGrady:\\We grow them here on the b-ball ranch. Look, I've got a lot of work to do, can you leave me alone?");
sCinema(oBarkley,"dialog","Uh, sorry.",1);
} else if (sOvar(object_index,-1)=1) { //no pay
sCinema(oBarkley,"dialog","Tracy McGrady:\\I'm busy. If you want something, go in the ranch.");
}
