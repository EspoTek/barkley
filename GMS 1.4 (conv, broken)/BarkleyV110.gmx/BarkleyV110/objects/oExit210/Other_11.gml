//global.posser=mystart;global.roomer=RomCatacombHub2;
//VERY IMPRTANT
if (sOvar(oAllard,-1)=1) {
if (sOvar(oExit210,-1)>0) exit;
sOvar(oExit210,1);
sCinema(oBarkley,"move","down");
sCinema(oBarkley,"dialog","We can't go back in there.",1);
sCinema(oBarkley,"code",cine_0145);
} else {
global.posser=object_index;
if (room=rom0) global.roomer=rom1;
else global.roomer=rom0;
global.tupper=1;
}
