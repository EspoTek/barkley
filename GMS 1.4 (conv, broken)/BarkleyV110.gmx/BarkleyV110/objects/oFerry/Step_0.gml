//272
if (sail=1) {
image_index=1; image_speed=0;
y-=1;
with (oPlayer) y-=1;
if (y<272) { y+=16; with (oPlayer) y+=16; }
}
if (sail=2) {
image_index=1; image_speed=0;
y-=1;
with (oPlayer) y-=1;
if (y<0) { sail=0; image_index=0; image_speed=0; y=0; }
}
