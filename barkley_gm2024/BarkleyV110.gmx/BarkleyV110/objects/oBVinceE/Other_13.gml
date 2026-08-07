global.descriptor="Short Circuit";
if (exec!=-1) { fff=0; exec=-1; walkdist=35; stage=0; wdoing=3; walk=target; exit; }
if (stage=0) {
depth=target.depth-1;
if (fff=0) { fff=1; img=1; sprite_index=sBVinceEnemy; }
if (fff=5) { sS(mBShorted); img=2; las=instance_create(x+25,y-17,oBDummy); las.sprite_index=sBShorted; las.depth=target.depth-1; las.visible=1; las.image_speed=.5; }
if (fff>5) target.shake=5;
if (fff=20) {
with (target) {
sBCondition("brain",-floor(_rbrain*.15),id);
sBCondition("guard",-floor(_rguard*.15),id);
}
}
if (fff>30) { doing=-1; img=1; with (las) instance_destroy(); }
}
if (fff!=0) fff+=1;
