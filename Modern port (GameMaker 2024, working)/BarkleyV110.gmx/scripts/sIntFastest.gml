//Get fastest, arg0 is enemy or not
global.b_c=0;
with (oBattler) {
 if (enemy=argument0 && _vp>0 && kill=0) {
  global.b_pt[global.b_c]=_speed;
  global.b_id[global.b_c]=id;
  global.b_c+=1;
  global.b_pt[global.b_c]=-1;
 }
}
//Compile fastest
var h,i,com,low;
low=-1;
com=0;
for (h=0; global.b_pt[h]!=-1; h+=1) {
for (i=0; global.b_pt[i]!=-1; i+=1) {
if (global.b_pt[i]>com) { low=i; com=global.b_pt[i]; }
}
fastest[h]=global.b_id[low];
global.b_pt[low]=0;
com=0;
}
fastmax=h-1;