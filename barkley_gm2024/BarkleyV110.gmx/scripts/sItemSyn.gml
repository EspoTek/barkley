//Syn: Arg0=Item to return string synposis of.
if (string(argument0)!='0') refItem(argument0);
var sent;
sent='';
if (global.tAir!=0) sent=sent + ', Muscle +' + string(global.tAir);
if (global.tGuard!=0) sent=sent + ', Guard +' + string(global.tGuard);
if (global.tZaubacity!=0) sent=sent + ', Brain +' + string(global.tZaubacity);
if (global.tFoot!=0) sent=sent + ', Speed +' + string(global.tFoot);
if (global.tVp!=0) sent=sent + ', VP +' + string(global.tVp);
if (global.tZp!=0) sent=sent + ', BP +' + string(global.tBp);
sent=string_delete(sent,1,2);
return(sent);
