coh=0;
if (stage=1.001) {
stage=2.001;
sprite_index=sBBalthiosStand;
}
if (stage=1.002) {
with (oBWater0) instance_destroy();
stage=2.002;
sprite_index=sBBalthiosStand;
sound_stop(mBWaterfall);
with (oBattler) {
if (enemy=1) {
if (floor(random(2))=1) {
son=(instance_create(x,y,oDamage));
son.depth=depth-1;
son.dmg="MISS";
} else {
sBCondition("inflict","diabetes",id);
}
}
}
}
if (stage=1.003) {
with (oBWater0) instance_destroy();
stage=2.003;
sprite_index=sBBalthiosStand;
sound_stop(mBWaterfall);
with (oBattler) {
if (enemy=1) {
if (floor(random(2))=1) {
son=(instance_create(x,y,oDamage));
son.depth=depth-1;
son.dmg="MISS";
} else {
sBCondition("inflict","glaucoma",id);
}
}
}
}
