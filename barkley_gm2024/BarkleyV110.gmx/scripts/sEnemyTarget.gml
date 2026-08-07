//Get default
//randomnew as argument
if (argument0='random') {
 global.b_target=0;
 with (oBattler) if (enemy=argument1 && _vp>0) global.b_target+=1;
 global.b_temp=floor(random(global.b_target));
 global.b_target=0;
 with (oBattler) {
  if (enemy=argument1 && _vp>0) {
   if (global.b_target=global.b_temp) return(id);
   else global.b_target+=1;
  }
 }
} else if (argument0='weakest') {

} else if (argument0='strongest') {

} else if (argument0='fixated') {
 global.b_target=0;
 with (oBattler) if (enemy=argument1 && _vp>0) global.b_target+=1;
 global.b_temp=fixated mod global.b_target;
 global.b_target=0;
 with (oBattler) {
  if (enemy=argument1 && _vp>0) {
   if (global.b_target=global.b_temp) return(id);
   else global.b_target+=1;
  }
 }
}
//If no target
if (variable_local_exists("target")=1) return(target);
else { with (oBattler) if (enemy=argument1) return(id); }