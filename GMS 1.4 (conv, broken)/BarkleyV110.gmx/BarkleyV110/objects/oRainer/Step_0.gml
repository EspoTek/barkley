sound_volume(mRain,0.5+(hhh/45));
hhh=min(90,hhh+0.2);
if (bolt=0) exit;
if (hhh>45) {
lgt-=hhh/30;
if (lgt<0) {
instance_create(__view_get( e__VW.XView, 0 )+random(320),__view_get( e__VW.YView, 0 )+140+random(100),oLightbolt);
lgt=40+random(20);
}
}
