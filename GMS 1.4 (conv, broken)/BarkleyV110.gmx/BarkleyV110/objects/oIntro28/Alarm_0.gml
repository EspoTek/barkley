with (oBarkley) {
if (global.victorian=0) name="Cyber Dwarf";
else name="Gear Dwarf";
face=6;
mask_index=sMask2;
}
sCinema(oBarkley,"wait",1.5);
sCinema(oCyberdwarf,"dialog","Hmm... There appears to be some sort of pit ahead of me. I wonder if it holds the answers to the mystery of the jamicite gate...",1);
sParty("del",0); sParty("del",1); sParty("del",3); sParty("del",4); 
sParty("add",3);
