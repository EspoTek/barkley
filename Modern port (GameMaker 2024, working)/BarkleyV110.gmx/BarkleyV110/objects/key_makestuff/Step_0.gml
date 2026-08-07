if (global.control=9) { image_index=0; image_speed=0; }
else { image_index=1; image_speed=0; }
if (doall!=-1) {
global.temp=doall;
global.temp2=0;
with (key_control) {
if (class!=global.temp) active=0; else { active=1; global.temp2=1; }
}
if (global.temp2=0) { doall=-1; key_doset(); }
}
