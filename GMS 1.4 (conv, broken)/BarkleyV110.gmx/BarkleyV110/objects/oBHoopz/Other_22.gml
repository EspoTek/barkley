if (attack=0) { exit; }
global.b_obj=global.b_cmiddle;
/////////////////////////////////////////////////////////////Turn ends
if (prefin=1) { //aimed
if (instance_exists(oBBullet)=0 && instance_exists(oBReticule)=0) { prefin=-2; alarm[5]=35; }
}
if (prefin=2) { //charge
if (instance_exists(oBBullet)=0 && instance_exists(oBCharger)=0 && cfail=0) { prefin=-2; alarm[5]=35; }
}
if (prefin>200) {
if (prefin=201) { prefin=-2; alarm[5]=35; oBattleMenu.hilight=-1; with (oBattler) hilight=0; }
else prefin-=1;
}
if (prefin=-2) exit;
//Rest
back=max(0,back-1);
if (reload=1) {
shoot=1;
face+=40; //20
if (face>sface+360) { clip=clipsize; face=180; shoot=0; reload=0; }
exit;
}
x-=44; y-=15; //so bullets created properly
skillusing=0;
if ((prefin=-1 || prefin=2) && instance_exists(oBBullet)=0) {
if (sKey(global.key_start) && charge=0) { //////////////////////////mega charge
if (instance_exists(oBCharger)=0) {
shoot=1;
charge=1;
sound_play(mBGunCharge);
cfail=0;
prefin=2;
instance_create(x,y,oBCharger);
}
} else if (instance_exists(oBCharger) || charge=1) {
dir=point_direction(x,y,target.x,target.y);
rot=dir-5+random(10);
ooo=2;
if (instance_exists(oBCharger)=0) {
ooo=3;
} else if (sKey(global.key_start)=0) {
if (oBCharger.yy>74) ooo=1;
else ooo=0;
}
if (ooo=1 || ooo=3) { //smoke
sound_stop(mBGunCharge);
if (ooo=1) charge=0;
else charge=2;
with (oBCharger) instance_destroy();
sound_stop(mBGunCharge);
sound_play(mBGunFail);
shoot=1;
alarm[0]=30;
dir=point_direction(x,y,target.x,target.y);
face=dir;
cfail=0;
repeat (15) {
ggg=instance_create(x,y,oBSmoke);
ggg.vspeed=0;
ggg.direction=point_direction(x,y,target.x,target.y);
ggg.speed=(5+random(5));
}
} else if (ooo=0) {
sound_stop(mBGunCharge);
charge=0;
shoot=1;
alarm[0]=30;
dir=point_direction(x,y,target.x,target.y);
face=dir;
xx=x+lengthdir_x(shaft,dir-90)+lengthdir_x(barrel,dir);
yy=y+lengthdir_y(shaft,dir-90)+lengthdir_y(barrel,dir);
sound_play(asset_get_index("mBGun"+string(imgz)));
bul=instance_create(xx,yy,oBBullet);
bul.type=2;
bul.speed=(10+random(5))/2; //mega shot slow
bul.direction=dir-3+random(6);
bul.img=imgz;
//global.b_obj=bul;
if (ceil(oBCharger.yy)=70) { vil=2.5; } //73
else vil=1+((1/71)*oBCharger.yy) //74
bul.image_xscale=vil;
bul.image_yscale=vil;
rot-=35+(vil*60)+random(20);
back=1;
with (oBCharger) instance_destroy();
}
} else if (sKey(global.key_start)=0) charge=0;
}

if (prefin=-1 || prefin>200) { ////////////////////////////////////RAPID FIRE

if (prefin>200) {
global.descriptor="Left / Right to change targets.";
with (oBattleMenu) {
sIntTarget(1);
if (sKey(global.key_left,1)) { sP(); pos1=max(0,pos1-1); }
if (sKey(global.key_right,1)) { sP(); pos1=min(targetmax,pos1+1); }
with (oBattler) hilight=0; 
targetid[pos1].hilight=1;
}
target=oBattleMenu.targetid[oBattleMenu.pos1];
oBattleMenu.hilight=target;
}

if (sKey(global.key_cancel) && clip>0 && mash=0) {
if (prefin=-1) { clip=5; prefin=2900; instance_create(0,0,oBMagazine); } //was 2 secs, this is time to shoot
mash=3;
clip-=1;
if (clip=0) { clip=5; prefin=201; with (oBMagazine) instance_destroy(); }
//else if (floor(random(jamchance))=0) jammed=1;
shoot=1;
alarm[0]=30;
dir=point_direction(x,y,target.x,target.y);
face=dir;
xx=x+lengthdir_x(shaft,dir-90)+lengthdir_x(barrel,dir);
yy=y+lengthdir_y(shaft,dir-90)+lengthdir_y(barrel,dir);
sound_play(asset_get_index("mBGun"+string(imgz)));
bul=instance_create(xx,yy,oBBullet);
bul.type=0;
bul.speed=10+random(5);
bul.direction=dir-3+random(6);
bul.img=imgz;
rot-=20+random(5);
back=1;
} else if (sKey(global.key_cancel)=0) mash=max(0,mash-1);
}

if ((prefin=-1 || prefin=1) && instance_exists(oBBullet)=0) { ////////////////////aimed shot
if (sKey(global.key_action) && doshot<2) {
if (doshot=0) {
shoot=1;
dir=point_direction(x,y,target.x,target.y);
face=dir;
xx=x+lengthdir_x(shaft,dir-90)+lengthdir_x(barrel,dir);
yy=y+lengthdir_y(shaft,dir-90)+lengthdir_y(barrel,dir);
prefin=1;
bullet=instance_create(xx,yy,oBReticule);
bullet.start=point_distance(bullet.x,bullet.y,target.x,target.y);
bullet.target=target;
bullet.direction=dir;
//global.b_obj=bullet;
}
doshot=1;
if (bullet.x<target.x-60) doshot=2; //100
} else if (doshot!=0 && doshot!=2.1) {
shoot=1;
alarm[0]=30;
dir=oBReticule.direction;
face=dir;
stray=min(60,point_distance(bullet.x,bullet.y,target.x,target.y))*2;
stray=abs(stray-120);
xx=x+lengthdir_x(shaft,dir-90)+lengthdir_x(barrel,dir);
yy=y+lengthdir_y(shaft,dir-90)+lengthdir_y(barrel,dir);
sound_play(asset_get_index("mBGun"+string(imgz)));
bul=instance_create(xx,yy,oBBullet);
bul.type=1;
bul.times=stray;
bul.speed=15+random(5);
bul.direction=dir;//-(stray/2)+random(stray);
bul.img=imgz;
//global.b_obj=bul;
rot-=20+random(5);
back=1;
if (doshot=1) doshot=0;
else doshot=2.1;
with (oBReticule) { instance_destroy(); }
} else if (sKey(global.key_action)=0) doshot=0;
}
x+=44; y+=15;
