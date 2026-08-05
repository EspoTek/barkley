if (place_meeting(x,y,oTalker)) {
if (desc!="Nothing...") {
global.dialog=1;
sDialog(desc);
} 
if (string_count("oExit",object_get_name(object_index))=0) event_user(1);
else { global.movefreeze=1; alarm[0]=1; }
//else if 
if (global.dialog=1) {
domove=-1;
move="";
if (oBarkley.t=0) t=2;
if (oBarkley.t=1) t=3;
if (oBarkley.t=2) t=0;
if (oBarkley.t=3) t=1;
}
}
