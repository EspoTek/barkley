global.descriptor="Binary Shower";
global.b_obj=global.b_middle;
if (exec!=-1) { lou=0; bou=0; stage=0; global.b_obj=global.b_middle; doing=5; fff=0; exit; }
if (stage=0) {
if (fff=0) { fff=1; sprite_index=sBVinceCelebrate; img=0; sS(mBBinary); }
if (fff>2 && lou<15) {
las=instance_create(x-25+random(30),y-50,oBDummy);
las.master=id; las.focus=1; las.visible=1; las.image_index=floor(random(2)); las.image_speed=0;
las.sprite_index=sBBinary; las.vspeed=3+random(2); las.depth=depth-1;
lou+=1;
fff=1;
}

with (oBDummy) { if (focus=1) {
image_alpha-=random(.1);
if (image_alpha<0) instance_destroy();
} }

if (lou>14 && fff>20) { fff=1; stage=1; }
} else if (stage=1) {
if (fff=2) {
sBCondition("power",floor(_rpower*.15),id);
sBCondition("brain",floor(_rbrain*.15),id);
sBCondition("speed",floor(_rspeed*.15),id);
sBCondition("guard",floor(_rguard*.15),id);
}
sprite_index=sBVinceEnemy; img=1;
if (fff>15) { doing=-1; stage=0; finish=1; ended=0; }
}
if (fff!=0) fff+=1;
