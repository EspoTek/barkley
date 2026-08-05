//
if (st=0) {
object59.visible=1;
y=-100;
gravity=0;
image_index=12; image_speed=0;
with (object52) instance_destroy();
with (object51) instance_destroy();
with (object44) instance_destroy();
//alarm[0]=90;
limit=1;
st+=1;
} else if (st=1) {
fire=0;
global.shake=12;
vspeed=0;
image_index=12; image_speed=0;
instance_create(0,0,oEchain);
sA("stopall");
with (oRainer) instance_destroy();
instance_create(0,0,oObscurez);
st+=1;
alarm[0]=60;
} else if (st=2) {
image_index=0; image_speed=0;
st+=1;
alarm[0]=90;
} else if (st=3) {
global.shake=0;
st+=1;
alarm[0]=60;
sA("stopall");
} else {
global.roz=RomCybership;
room_goto(RomCybership);
}

