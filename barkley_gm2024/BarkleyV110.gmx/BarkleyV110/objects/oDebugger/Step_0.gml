//if (sKey(vk_f6,1)) room_goto(RomBarMove);
if (sKey(vk_f7,1)) instance_create(0,0,oBHiratio);
//RomCyberMove/RomBalMove never existed as rooms -- like RomBarMove above they
//appear in the GM6 source only at these call sites. GM6 read them as 0 and
//warped to room 0; here they are a fatal unset-variable read. Disabled to match
//the author's own handling of the F6 case.
//if (sKey(vk_f8,1)) room_goto(RomCyberMove);
//if (sKey(vk_f9,1)) room_goto(RomBalMove);
if (sKey(vk_f2,1)) { global.batset=1; room_restart(); }
if (sKey(vk_f3,1)) { sA("stopall"); room_goto(RomTrans); }
if (sKey(vk_f4,1)) {
ggg=instance_create(oTestTarget.x-25,oTestTarget.y+25,oBReticule);
ggg.direction=45;
ggg.type=1;
ggg=instance_create(oTestTarget.x-25,oTestTarget.y-25,oBReticule);
ggg.direction=360-45;
ggg.type=1;
ggg=instance_create(oTestTarget.x+25,oTestTarget.y,oBReticule);
ggg.direction=180;
ggg.type=1;
ggg=instance_create(oTestTarget.x,oTestTarget.y+25,oBReticule);
ggg.direction=90;
ggg.type=1;
}
if (sKey(vk_numpad0,1)) with (oBattler) { if (enemy=1) { exec=0; target=sEnemyTarget("random",!enemy); } }
if (sKey(vk_numpad1,1)) with (oBattler) { if (enemy=1) { exec=1; target=sEnemyTarget("random",!enemy); } }
if (sKey(vk_numpad2,1)) with (oBattler) { if (enemy=1) { exec=2; target=sEnemyTarget("random",!enemy); } }
if (sKey(vk_numpad3,1)) with (oBattler) { if (enemy=1) { exec=3; target=sEnemyTarget("random",!enemy); } }
if (sKey(vk_numpad4,1)) with (oBattler) { if (enemy=1) { exec=4; target=sEnemyTarget("random",!enemy); } }
if (sKey(vk_numpad5,1)) with (oBattler) { if (enemy=1) { exec=5; target=sEnemyTarget("random",!enemy); } }
if (sKey(ord("1"),1)) with (oBattler) { if (enemy=0) { exec=0; target=sEnemyTarget("random",!enemy); } }
if (sKey(ord("2"),1)) with (oBattler) { if (enemy=0) { exec=1; target=sEnemyTarget("random",!enemy); } }
if (sKey(ord("3"),1)) with (oBattler) { if (enemy=0) { exec=2; target=sEnemyTarget("random",!enemy); } }
if (sKey(ord("4"),1)) with (oBattler) { if (enemy=0) { exec=3; target=sEnemyTarget("random",!enemy); } }
if (sKey(ord("5"),1)) with (oBattler) { if (enemy=0) { exec=4; target=sEnemyTarget("random",!enemy); } }
if (sKey(ord("6"),1)) with (oBattler) { if (enemy=0) { exec=5; target=sEnemyTarget("random",!enemy); } }
if (sKey(ord("7"),1)) with (oBattler) { if (enemy=0) { exec=6; target=sEnemyTarget("random",!enemy); } }
exit;
if (sKey(ord("Q"),1)) with (oBattler) {
rn=random(100);
clt=movn[0];
for (i=0; i<8; i+=1) {
if (rn<clt) { rn=i; break; }
else clt+=movn[i+1];
}
exec=rn;
target=sEnemyTarget("random",!enemy);
global.descriptor=move[rn];
oBattleMenu.alarm[0]=60;
}
