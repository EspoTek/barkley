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
}
//port: global.cinema gates ALL player input -- oController's Step exits on it --
//and EVERY channel's dispatcher sets it (Other_11 line 4, "recently added" in the
//author's own words). Only oCinema0's drain cleared it, so a scene queued solely
//on a child channel left it stuck at 1 and the game stopped responding to input
//with no way out. The bones game against Hundley is exactly that: oBonesMenu
//queues Hundley's taunts on oCinema1 and never touches channel 0, so finishing a
//round hung the game. Clear it once NO channel still has queued work, which also
//covers a child that outlives channel 0's drain in an ordinary cutscene.
var anyq;
anyq=0;
with (oCinema) { if (count>0) anyq=1; }
if (anyq=0) global.cinema=0;
enable=0; 
} else if (sub!="jump" && queue[0,1]!="jump") event_user(1);
