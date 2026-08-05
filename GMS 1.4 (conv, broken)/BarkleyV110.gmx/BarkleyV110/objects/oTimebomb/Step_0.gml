if (active=1) {
cou-=global.rd;
if (cou<0) {
cou=20;
image_index=!image_index; image_speed=0;
if (image_index=1) sound_play(mTimebomb);
}
}
