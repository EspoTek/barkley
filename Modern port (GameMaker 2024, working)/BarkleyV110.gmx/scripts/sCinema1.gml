//Call from object to do on?
//arg0 object Arg1 is command, rest is parameters
with (oCinema1) {
i=count;
queue[i,0]=argument0;
queue[i,1]=argument1;
queue[i,2]=argument2;
queue[i,3]=argument3;
queue[i,4]=argument4;
queue[i,5]=argument5;
queue[i,6]=argument6;
queue[i,7]=argument7;
queue[i,8]=argument8;
count+=1;
queue[i+1,0]=-1;
}