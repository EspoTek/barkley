var tttmp;
with (target) { { tttmp=instance_create(x-sprite_xoffset,y-sprite_yoffset,oBExplode); tttmp.master=id; } oBExplode.depth=depth-1; }
stage=2;
sDamage(doing);
sound_play(mBGun4);
