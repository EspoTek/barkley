//make limiters
cou+=1;
instance_create(x3,y3,oBTarget2);
instance_create(x4,y4,oBTarget2);
if (cou>4) {
sS(mBRefract);
cou=0;
master.target=sEnemyTarget("random",!master.enemy);
target=master.target;
der=!der;
if (der=0) {
x3=target.x;
y3=target.y;
} else {
x4=target.x;
y4=target.y;
}
global._bobj=target;
with (master) { if (enemy=0) { target=global._bobj; sDamage(10); } else sDamage(1); }
depth=global._bobj.depth-1;
}
