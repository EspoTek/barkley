//chaff
//repeat (80) {
//instance_create(x-10+random(20),y-10+random(20),oBChaffe);
//}
instance_destroy();
with (oBattler) { if (enemy=1) { sBCondition("vp",-999,id); shake=50; } }
sT(c_white,1,1);
sound_play(mHiratio1);
