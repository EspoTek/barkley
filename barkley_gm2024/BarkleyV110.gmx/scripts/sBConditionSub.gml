//*Inflict *glaucoma *player
//get amount decreased and add that when uninflicted
//use this script for inflicting guard down ie. guard down player
hitting=sCover(argument2);

if (instance_exists(oBHoopz)) {
if (argument0!='revive' && argument0!='cure' && global.turn.enemy=1) {
if (global.b_evade>0 && hitting.object_index=oBHoopz && global.b_scover=0 && oBHoopz.c_stroke=0) {
global.b_evade=2;
sDamageC(oBHoopz.id,"!EVADE!",c_lime);
exit;
}
}
}

with (hitting) {
//Get damages at my x
global.temp7=0;
global.temp6=x;
with (oDamage) if (x=global.temp6) global.temp7+=1;
global.temp7=global.temp7*10;
if (argument0="revive") {
 if (_vp<=0) {
 _vp=1;
 kill=0;
 sprite_index=stand;
 sen=(instance_create(x,y-global.temp7,oDamage));
 sen.depth=depth-1;
 sen.dmg="Revive";
 return(1);
 } else return(2);
} else if (argument0='inflict') {
 if (argument1='diabetes') {
 if (i_diabetes=1) { sDamageC(id,"IMMUNE",c_lime); return(1); }
 else if (c_diabetes=1) return(2);
 else {
 c_diabetes=1;
 }
 }
 if (argument1='glaucoma') {
 if (i_glaucoma=1) { sDamageC(id,"IMMUNE",c_lime); return(1); }
 else if (c_glaucoma=1) return(2);
 else {
 c_glaucoma=1;
 }
 }
 if (argument1='parkinsons') {
 if (c_parkinsons=1) return(2);
 else {
 c_parkinsons=1;
 }
 }
 if (argument1='aspergers') {
 if (c_aspergers=1) return(2);
 else {
 c_aspergers=1;
 }
 }
 
 if (argument1='handicapable') {
 if (c_handicapable=1) return(2);
 else {
 c_handicapable=1;
 c_hou=3;
 }
 }
 if (argument1='slowed' || argument1='timeout') {
 if (c_slowed=1) return(2);
 else {
 c_slowed=1;
 c_sou=3;
 }
 }
 if (argument1='stroke') {
 if (c_stroke=1) return(2);
 else {
 c_stroke=1;
 c_kou=3;
 }
 }
 if (argument1='montezuma') {
 if (c_montezuma=1) return(2);
 else {
 c_montezuma=1;
 c_mou=3;
 }
 }
 if (argument1='fouled') {
 if (c_fouled=1) return(2);
 else {
 c_fouled=1;
 }
 }
 sen=(instance_create(x,y-global.temp7,oDamage));
 sen.depth=depth-1;
 if (argument1="montezuma") sen.dmg="Montezuma's Revenge";
 else sen.dmg=string_upper(string_copy(argument1,1,1)) + string_copy(argument1,2,20);
 return(1);
} else if (argument0="cure") {
 if (argument1="all") {
  c_diabetes=0;
  c_glaucoma=0;
  c_parkinsons=0;
  c_aspergers=0;
  c_handicapable=0;
  c_slowed=0;
  c_stroke=0;
  c_montezuma=0;
  c_fouled=0;
  if (_xguard<0) _xguard=0;
  if (_xpower<0) _xpower=0;
  if (_xspeed<0) _xspeed=0;
  if (_xbrain<0) _xbrain=0;
  if (kill=0) sprite_index=stand;
  if (defending=1 && kill=0) sprite_index=defend;
 }
 if (argument1="ailments") {
  c_handicapable=0;
  c_slowed=0;
  c_stroke=0;
  c_montezuma=0;
  c_fouled=0;
  if (_xguard<0) _xguard=0;
  if (_xpower<0) _xpower=0;
  if (_xspeed<0) _xspeed=0;
  if (_xbrain<0) _xbrain=0;
 }
 if (argument1='diabetes') {
 if (c_diabetes=0) return(2);
 else {
 c_diabetes=0;
 }
 }
 if (argument1='glaucoma') {
 if (c_glaucoma=0) return(2);
 else {
 c_glaucoma=0;
 }
 }
 if (argument1='parkinsons') {
 if (c_parkinsons=0) return(2);
 else {
 c_parkinsons=0;
 }
 }
 if (argument1='aspergers') {
 if (c_aspergers=0) return(2);
 else {
 c_aspergers=0;
 if (kill=0) sprite_index=stand;
 if (defending=1 && kill=0) sprite_index=defend;
 }
 }
 
 if (argument1='handicapable') {
 if (c_handicapable=0) return(2);
 else {
 c_handicapable=0;
 c_hou=0;
 }
 }
 if (argument1='slowed' || argument1='timeout') {
 if (c_slowed=0) return(2);
 else {
 c_slowed=0;
 c_sou=0;
 }
 }
 if (argument1='stroke') {
 if (c_stroke=0) return(2);
 else {
 c_stroke=0;
 c_kou=0;
 }
 }
 if (argument1='montezuma') {
 if (c_montezuma=0) return(2);
 else {
 c_montezuma=0;
 c_mou=0;
 }
 }
 if (argument1='fouled') {
 if (c_fouled=0) return(2);
 else {
 c_fouled=0;
 }
 }
 sen=(instance_create(x,y-global.temp7,oDamage));
 sen.depth=depth-1;
 if (argument1="all") cdn="Ailments";
 else cdn=argument1;
 if (argument1="montezuma") sen.dmg="Cured Montezuma's Revenge";
 else sen.dmg="Cured " + string_upper(string_copy(cdn,1,1)) + string_copy(cdn,2,20);
 return(1);
} else { //Diff should have before diff and after diff, can error on max then min
 _diff=0;
 if (argument0="guard") {
  _diff=_xguard;
  _xguard+=argument1;
  _xguard=min(floor(_rguard*0.25),_xguard);
  _xguard=max(-floor(_rguard*0.25),_xguard);
  _diff=_xguard-_diff;
 }
 if (argument0="power") {
  _diff=_xpower;
  _xpower+=argument1;
  _xpower=min(floor(_rpower*0.25),_xpower);
  _xpower=max(-floor(_rpower*0.25),_xpower);
  _diff=_xpower-_diff;
 }
 if (argument0="speed") {
  _diff=_xspeed;
  _xspeed+=argument1;
  _xspeed=min(floor(_rspeed*0.25),_xspeed);
  _xspeed=max(-floor(_rspeed*0.25),_xspeed);
  _diff=_xspeed-_diff;
 }
 if (argument0="brain") {
  _diff=_xbrain;
  _xbrain+=argument1;
  _xbrain=min(floor(_rbrain*0.25),_xbrain);
  _xbrain=max(-floor(_rbrain*0.25),_xbrain);
  _diff=_xbrain-_diff;
 }
 if (argument0="vp") {
  if (_vp>0) { _vp+=argument1; _diff=1; }
  if (argument1<0) {
   shake=max(3,((abs(argument1)/_rvp)*100)/4);
   shake=min(shake,50);
  }
 }
 if (argument0="bp") {
  _bp+=argument1; _diff=1;
 }
 if (_diff=0) return(2);
 if (argument0="vp") {
  sen=(instance_create(x,y-global.temp7,oDamage));
  sen.depth=depth-1;
  sen.dmg=-argument1;
  return(1);
 }
 if (argument0="bp") {
  sen=(instance_create(x,y-global.temp7,oDamage));
  sen.depth=depth-1;
  if (argument1<0) sen.dmg="-" + string(abs(-argument1));
  else sen.dmg=string(abs(-argument1));
  sen.col=make_color_rgb(82,119,219);
  return(1);
 }
 sen=(instance_create(x,y-global.temp7,oDamage));
 sen.depth=depth-1;
 if (argument1<0) sen.dmg=string_upper(string_copy(argument0,1,1)) + string_copy(argument0,2,20) + " -" + string(abs(_diff));
 else sen.dmg=string_upper(string_copy(argument0,1,1)) + string_copy(argument0,2,20) +" +" + string(_diff);
 return(1);
}
}
return(1); //new