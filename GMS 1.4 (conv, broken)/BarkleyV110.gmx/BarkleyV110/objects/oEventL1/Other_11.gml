if (sOvar(oEventL1,-1)=1) exit;
global.dialog=1;
oBarkley.move="";
sOvar(oEventL1,1); //752,288
spill=1;
sound_play(mCompress);
repeat (10) instance_create(752+random(32),288+random(32),oDiapuff);
//sCinema(oBarkley,'dialog',"There's no way I'm going back until I've got that damn rod.",1);
//sCinema(oBarkley,'move','down');
