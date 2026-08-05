//SPALDIGN CINEMA
event_inherited();
if (sOvar(oIntro20,-1)=-1) alarm[0]=1;
else if (sOvar(oIntro20,-1)=1) alarm[1]=1;
else { 
with (oCEO) instance_destroy(); 
with (oJordan) instance_destroy();
with (oCyberdwarf) instance_destroy();
with (oBalthios) instance_destroy();
with (oHoopz) instance_destroy();
}
