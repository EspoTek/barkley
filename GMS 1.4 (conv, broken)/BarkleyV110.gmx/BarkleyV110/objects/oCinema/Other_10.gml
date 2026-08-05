for (jj=0; queue[jj+1,0]!=-1; jj+=1) {
queue[jj,0]=queue[jj+1,0];
queue[jj,1]=queue[jj+1,1];
queue[jj,2]=queue[jj+1,2];
queue[jj,3]=queue[jj+1,3];
queue[jj,4]=queue[jj+1,4];
queue[jj,5]=queue[jj+1,5];
queue[jj,6]=queue[jj+1,6];
queue[jj,7]=queue[jj+1,7];
queue[jj,8]=queue[jj+1,8];
}
queue[jj,0]=-1;
count-=1;
start=0;
if (count<=0) { //some reason goes under 0
count=0;
with (global.cleardialog) indialog=0;
if (object_index=oCinema0) {
sDialog("set",1,"bottom");
global.cinema=0; 
}
enable=0; 
} else if (sub!="jump" && queue[0,1]!="jump") event_user(1);
