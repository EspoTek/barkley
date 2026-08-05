with (oBarkley) {
if (global.victorian=0) name="Balthios";
else name="Balthane";
face=2;
}
sOvar(object_index,1);
sCinema(oBarkley,"cond",cine_0148);
sCinema(oBarkley,"dialog","Hmm, it appears that this is the path that I must take. Hopefully I will find a way to open the gate...",1);
sParty("del",0); sParty("del",1); sParty("del",3); sParty("del",4); 
sParty("add",1);
