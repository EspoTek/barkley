//This executes after the create event
slav=(instance_create(x,y,oBDummy));
//Name
if (enemy=1) {
 //Get name
 global.temp=id;
 global.temp2=1;
 with (object_index) {
  num=global.temp2;
  if (global.temp=id) break;
  else global.temp2+=1;
 }
 if (instance_number(object_index)!=1) name=orgname + "" +string(num); //had a space before
 else name=orgname;
}

alarm[10]=2;//Set minus caps
alarm[9]=1; //refenemy
//Set minus counters, max is 25 as defined in condition script
_xvp=0;
_xbp=0;
_xpower=0;
_xguard=0;
_xspeed=0;
_xbrain=0;
