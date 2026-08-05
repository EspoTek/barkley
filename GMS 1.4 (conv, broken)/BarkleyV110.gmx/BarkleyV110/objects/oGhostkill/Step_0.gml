global.doosh+=global.rd/3;
repeat(global.doosh/40) instance_create(x,y,oGhoster);
repeat(global.doosh/40) instance_create(x,y,oExploder);
if (global.doosh>100) {
with (oGhoster) instance_destroy();
with (oExploder) instance_destroy();
instance_destroy();
}
cou+=global.rd;
if (cou>5) {
cou=0;
bbb=floor(random(4));
if (bbb=0) sound_play(mGhosthit0);
if (bbb=1) sound_play(mGhosthit1);
if (bbb=2) sound_play(mGhosthit2);
if (bbb=3) sound_play(mGhosthit3);
}
