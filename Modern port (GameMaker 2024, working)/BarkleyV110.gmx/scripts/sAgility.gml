//Returns list of next 8 people
with (oBCamera) {
 if (argument0='init') {
  global.aglcount=0;
  global.agl=0;
  global.aglpar=0;
  with (oBattler) {
   aglc=0;
   global.aglcount+=_speed;
  }
 } else if (argument0='sort') {
  global.ii=0;
  global.que=0;
  while (global.ii=0) {
   with (oBattler) {
    if (instance_exists(id) && kill=0 && alp>0) {
     aglc+=_speed;//+random(global.aglcount/instance_number(oBattler));
     if (aglc>global.aglcount) {
      global.que[global.ii]=self.id;
      global.ii+=1;
     }
    }
   }
  }
  global.hir=0;
  global.lol=0;
  repeat (global.ii) {
   with (global.que[global.lol]) {
    if (aglc>global.hir) {
     global.lol2=global.lol;
     global.hir=aglc;
    }
   }
   global.lol+=1;
  }
  arrayi=global.que[global.lol2];
  arrayi.aglc=0;
 if (arrayi.kill=1 || arrayi._vp<=0) sAgility('sort');
 } else if (argument0='trim') {
for (o=0; o<turn; o+=1) {
if (global.who[o].alp<0) {
for (g=o; g<turn-1; g+=1) global.who[g]=global.who[g+1];
o-=1;
sAgility('sort');
global.who[turn-1]=arrayi;
}
}
}
}