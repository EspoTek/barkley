//Saves and loads battles
var i, pos;
if (argument0='status') {
 pos=-1;
 for (i=0; i<500; i+=1) {
  if (global.fighter[i]=argument1) { pos=i; break; }
  if (global.fighter[i]=-999) break;
 }
 if (pos=-1) global.fighter[i]=argument1;
 else if (global.fighters[pos]=1) instance_destroy();
 mypos=i;
} else if (argument0='save') {
 global.cvx=oBarkley.x;
 global.cvy=oBarkley.y;
 global.b_=0;
 global.bl_=1;
 with (oPlayer) {
  if (ambattler=1) {
   global.batsav[global.b_,0]=id;
   global.batsav[global.b_,1]=x;
   global.batsav[global.b_,2]=y;
   global.batsav[global.b_,3]=aware;
   global.batsav[global.b_,4]=xdx;
   global.batsav[global.b_,5]=ydy;
   global.batsav[global.b_,6]=aco;
   global.batsav[global.b_,7]=start;
   global.batsav[global.b_,8]=zou;
   global.batsav[global.b_,9]=t;
   global.batsav[global.b_,10]=move;
   global.b_+=1;
  }
 }
 global.b__=global.b_;
} else if (argument0='load') { //load
 global.bl_=0;
 global.freeze=0;
 for (i=0; i<global.b__; i+=1) {
  global.b_=i;
  with (global.batsav[global.b_,0]) {
   x=global.batsav[global.b_,1];
   y=global.batsav[global.b_,2];
   aware=global.batsav[global.b_,3];
   xdx=global.batsav[global.b_,4];
   ydy=global.batsav[global.b_,5];
   aco=global.batsav[global.b_,6];
   start=global.batsav[global.b_,7];
   zou=global.batsav[global.b_,8];
   t=global.batsav[global.b_,9];
   move=global.batsav[global.b_,10];
  }
 }
 oBarkley.ghost=1;
 with (oFollower) ghost=1;
 if (global.batface!=0) {
 with (global.batface) {
  if (global.batresult="won") { global.fighters[mypos]=1; instance_destroy(); }
  else global.fighters[mypos]=0;
 }
 }
}