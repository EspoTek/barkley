var tttmp;
with (target) { { tttmp=instance_create(x-sprite_xoffset,y-sprite_yoffset,oBExplode); tttmp.master=id; } oBExplode.depth=depth-1; }
stage=2;
sDamage(doing);
sound_stop(mBEarthr);
sound_play(mBVerboten);
sT(c_black,1,1);
alarm[0]=10;
