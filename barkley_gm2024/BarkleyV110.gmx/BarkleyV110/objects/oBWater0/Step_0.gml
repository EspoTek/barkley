x=oBBalthios.x;
y=oBBalthios.y+20;
if (oBBalthios.image_index=1) {
if (sound_isplaying(mBWaterfall)=0) sound_loop(mBWaterfall);
repeat (14) instance_create(x-16+random(32),y-16+random(32),oBWater1);
}
