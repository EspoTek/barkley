//Object var schemes. So I don't need records.
//DOES FOR ENTIRE OBJECT INDEXES.
//Arg0 = index, searches for creates if none
//arg1 = value. -1 is check
var b,fnd;
fnd=-1;
for (b=0; global.aswitch[b,0]!=-1; b+=1) {
if (global.aswitch[b,0]=argument0) { fnd=b; break; }
}
if (argument1=-1) {
if (fnd!=-1) return(global.aswitch[fnd,1]); //get value
else return(-1); //no val to get
}
if (fnd=-1) { //create new
global.aswitch[b,0]=argument0;
global.aswitch[b,1]=argument1;
} else global.aswitch[fnd,1]=argument1; //set old