function sTrans(argument0, argument1, argument2) {
	/*gm6argdefaults*/ if (argument0==undefined) argument0=0; if (argument1==undefined) argument1=0; if (argument2==undefined) argument2=0;
	if (argument0="fadein") {
	hhh=instance_create(0,0,oFader);
	hhh.fade=0;
	} else if (argument0="fadeout") {
	hhh=instance_create(0,0,oFader);
	hhh.fade=1;
	} else if (argument0="black") {
	hhh=instance_create(0,0,oFader);
	hhh.fade=2;
	} else if (argument0="swap") {
	hhh=instance_create(0,0,oFader);
	hhh.fade=3;
	hhh.effector=argument2;
	hhh.older=argument2.sprt;
	}
	hhh.un=argument1;
	//if (argument0='fadein' && argument1=3) hhh.un=.5;
	//if (argument0='fadeout' && argument1=1) hhh.un=.5;
	return(hhh);


}
