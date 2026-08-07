//Can heal with negative value
//Remove stroke on hit
//Miss always flag
//Argument0 is target, Arg1 default is self unless specified
//GENERATE ACCURACY LOCALLY
var i;
i=argument0;
_me=id;
if (argument1!=0) _me=argument1;
global.b_me=_me;
//global.b_align=enemy;
Typ=movedef[i];
Var=movevar[i];
Dmg=movebas[i];
Acc=movehit[i];
if (movetar[i]="enemy") {
sDamageSub(target,1);
} else if (movetar[i]="enemyall") {
with (oBattler) { _me=global.b_me; if (enemy=1) { sDamageSub(id,1); } }
} else if (movetar[i]="allyall") {
with (oBattler) {
_me=global.b_me;
if (enemy=0 && kill=0) {
sDamageSub(id,1);
}
}
} else if (movetar[i]="self") {
sDamageSub(id,0);
} else if (movetar[i]="target") { //suggests heal / no shake
sDamageSub(target,0);
}
sVerifyStats();