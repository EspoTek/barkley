//Necron 5 shadow cinema
if (sOvar(object_index,-1)=-1) alarm[0]=2;
else if (sOvar(object_index,-1)=1) alarm[1]=2;
else if (sOvar(object_index,-1)=2) alarm[2]=2;
else if (sOvar(object_index,-1)=3) alarm[3]=2;
else {
oBalthios.x=-999;
oCyberdwarf.x=-999;
// Port: oIntro42 exists only in RomNecronFinal, which places oBalthios,
// oCyberdwarf and oHoopz but not oVince (he is in eight other rooms). So this
// line always referenced an object with no instances, and under GameMaker 2024
// it raised and stopped the room's setup dead. Byte-identical in the GM6
// original, whose build ignored the error and moved to the next line.
with (oVince) x = -999;
oHoopz.x=-999;
}
