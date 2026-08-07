//Arg0=Command, Arg1=rest
var i,ii,jj,mm;
if (argument0='add') { /////////////////////////////////////add
 i=0;
 while (global.following[i]!=-1) i+=1;
 global.following[i]=argument1;
 global.following[i+1]=-1;
} else if (argument0='delete') { //////////////////////////delete
 for (ii=0; global.following[ii]!=-1; ii+=1) {
  if (global.following[ii]=argument1) break;
 }
 if (global.following[ii]=-1) exit;
 for (jj=0; global.following[ii+jj+1]!=-1; jj+=1) {
  global.following[ii+jj]=global.following[ii+jj+1];
 }
 global.following[ii+jj]=-1;
} else if (argument0='step') { /////////////////////////////////step
 if (global.following[0]=-1 || global.nofollow=1) exit;
 for (ii=0; global.following[ii]!=-1; ii+=1) {
  global.following[ii].allwalk=0;
  global.following[ii].walk=1;
 }
 if (x!=xprevious || y!=yprevious) {
  movf[150,0]=x; 
  movf[150,1]=y;
  movf[150,3]=image_speed;
  movf[150,4]=t;
  
   for (jj=0; jj<150; jj+=1) {
    movf[jj,0]=movf[jj+1,0];
    movf[jj,1]=movf[jj+1,1];
    movf[jj,3]=movf[jj+1,3];
    movf[jj,4]=movf[jj+1,4];
   }
  
  ii=0;
  while (global.following[ii]!=-1) {
   with (global.following[ii]) {
    depth=-(y+31);
    if (oBarkley.movf[150-f_distance,0]!=0 || oBarkley.movf[f_distance,1]!=0) {
     x=oBarkley.movf[150-f_distance,0];
     y=oBarkley.movf[150-f_distance,1];
     image_speed=oBarkley.movf[150-f_distance,3];
     t=oBarkley.movf[150-f_distance,4];
     allwalk=1;
     walk=1;
    }
   }
   ii+=1;
  }
 } else { with (oFollower) { allwalk=0; image_index=0.999; } }
} else if (argument0='update') { ////////////////////////////////update
with (oFollower) instance_destroy();
with (oBarkley) {
var i, vv;
i=0;
followers=0;
if (global.following[0]=-1) exit;
f_length=12;
while (global.following[i]!=-1) {
followers+=1;
vv=instance_create(oBarkley.x,oBarkley.y,global.following[i]);
vv.f_distance=f_length*followers;
vv.t=t;
vv.dap=1;
with (vv) depth=oBarkley.depth+1;
flw[i]=vv;
//with (vv) face_look(look);
i+=1;
}
f_count=0; //f_count=(f_length*(followers))+1;
for (jj=0; jj<150; jj+=1;) { //90
movf[jj,0]=0; 
movf[jj,1]=0; 
movf[jj,3]=0;
movf[jj,4]=0;
}
}
}