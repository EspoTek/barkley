//On balthios counter they die but damage exits it out from their hit, new if cond
if (instance_exists(oDamage)=1 || instance_exists(global.turn)=0 || instance_exists(oBZauber)=1) exit;

if (global.turn.finish=1) { 
staller=0; global.turn.finish=2; alarm[1]=1; oBattleMenu.alarm[0]=1; 
if (global.b_cover>1) {
global.b_cover=1;
oBCyberdwarf.x=global.b_cx;
oBCyberdwarf.y=global.b_cy;
}
exit; 
}

if (global.turn.enemy=0 || global.turn.finish=0.5 || global.turn.finish=2) exit; //player turn
if (global.descriptor!="") exit; //new!!!
with (global.turn) {
global.b_obj=id;
finish=0.5;
//Choose move
rn=random(99); //make 99 in case i didn't fill it to 99 on move list
clt=movn[0];
for (i=0; i<8; i+=1) {
if (rn<clt) { rn=i; break; }
else clt+=movn[i+1];
}
exec=rn;
target=sEnemyTarget('random',!enemy);
global.descriptor=move[rn];
}