//old targeter
//Get's targets, arg0 is enemy or not, arg1 on 1 factors dead too
global.b_c=0;
global.b_pt[0]=-1;
target[0]="";
with (oBattler) {
 if (enemy=argument0 && kill<=argument1) {
  global.b_pt[global.b_c]=xstart+(ystart*40); //was 4
  global.b_nm[global.b_c]=name;
  global.b_id[global.b_c]=id;
  global.b_c+=1;
  global.b_pt[global.b_c]=-1;
 }
}
//global.b_fd
var h,i,com,low;
low=-1;
com=99999999;
for (h=0; global.b_pt[h]!=-1; h+=1) {
for (i=0; global.b_pt[i]!=-1; i+=1) {
if (global.b_pt[i]<com) { low=i; com=global.b_pt[i]; }
}
targetid[h]=global.b_id[low];
target[h]=global.b_nm[low];
target[h+1]="";
global.b_pt[low]=9999999999999;
com=9999999999;
}
targetmax=h-1;