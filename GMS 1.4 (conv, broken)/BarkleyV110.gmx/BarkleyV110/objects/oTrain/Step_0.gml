cou-=global.rd;
if (cou<0) {
cou=60+random(60);
sound_volume(mTrain,0.25);
alarm[1]=45;
bbb=floor(random(3));
if (bbb=0) sound_play(mBump0);
if (bbb=1) sound_play(mBump1);
if (bbb=2) sound_play(mBump2);
global.shake=4;
}
if (sound_isplaying(mBump0)=0 && sound_isplaying(mBump1)=0 && sound_isplaying(mBump2)=0) sound_volume(mTrain,1);
