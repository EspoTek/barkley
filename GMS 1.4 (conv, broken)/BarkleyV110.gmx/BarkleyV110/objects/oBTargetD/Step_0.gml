if (master.enemy=0) {
spd=5;
if (sKey(global.key_up)) y2-=spd;
if (sKey(global.key_down)) y2+=spd;
if (sKey(global.key_right)) x2+=spd;
if (sKey(global.key_left)) x2-=spd;
x2=max(x2,oBCamera.left.x-50);
x2=min(x2,oBCamera.left.x+100);
}
x=x2;
y=y2;
instance_create(x,y,oBTarget2);
//make limiters
cou+=1;
if (cou>9) {
sS(mBLaser);
cou=0;
global._bobj=target;
if (position_meeting(x2,y2,global._bobj)=1) {
with (master) { if (enemy=0) { target=global._bobj; sDamage(10); } else { target=global._bobj; sDamage(0); } }
depth=global._bobj.depth-1;
}
}
