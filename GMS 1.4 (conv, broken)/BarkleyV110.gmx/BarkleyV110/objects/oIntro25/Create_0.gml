//Train
if (room=RomSubwayCar0) oHoopzdummy.visible=0;
alarm[10]=1;
if (sOvar(oLiberty,-1)<0) { //before doing liberty
if (room=RomSubwayCar0) sOvar(object_index,0);
if (sOvar(object_index,-1)=0) alarm[0]=2; //was <1
else if (sOvar(object_index,-1)=1) alarm[1]=2;
else if (sOvar(object_index,-1)=2) alarm[2]=2;
else if (sOvar(object_index,-1)=3) alarm[3]=2;
else if (sOvar(object_index,-1)=4) alarm[4]=2;
else if (sOvar(object_index,-1)=5) alarm[5]=2;
} else {
alarm[6]=2;
}
state=0;
