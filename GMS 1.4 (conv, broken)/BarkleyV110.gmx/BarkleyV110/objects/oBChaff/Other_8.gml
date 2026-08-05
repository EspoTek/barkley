//chaff
repeat (80) {
instance_create(x-10+random(20),y-10+random(20),oBChaffe);
}
instance_destroy();
with (oBCyberdwarf) {
sSkillDmg("chaff");
}
sound_play(mBChaff);
