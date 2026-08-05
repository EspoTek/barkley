instance_destroy();
global.txmp=target;
with (master) { target=global.txmp; sDamage(doing); }
with (target) { { tttmp=instance_create(x-sprite_xoffset,y-sprite_yoffset,oBExplode); tttmp.master=id; } sS(mKillbake); }
