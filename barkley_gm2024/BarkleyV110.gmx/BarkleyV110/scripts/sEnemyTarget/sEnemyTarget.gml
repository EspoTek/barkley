function sEnemyTarget(argument0, argument1) {
	/*gm6argdefaults*/ if (argument0==undefined) argument0=0; if (argument1==undefined) argument1=0;
	//Get default
	//randomnew as argument
	if (argument0="random") {
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
	} else if (argument0="weakest") {

	} else if (argument0="strongest") {

	} else if (argument0="fixated") {
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
	if (variable_instance_exists(id, "target")=1) return(target);
	else { with (oBattler) if (enemy=argument1) return(id); }


}
