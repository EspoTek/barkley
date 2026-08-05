if (active=1) {
y+=3*global.rd;
}
if (y>480+diff) {
sound_play(mBreak);
repeat(8) instance_create(x+random(16),y+random(16),oSmoker);
instance_destroy();
}
