function sCover(argument0) {
	/*gm6argdefaults*/ if (argument0==undefined) argument0=0;
	if (instance_exists(oBCyberdwarf)=0) return(argument0);
	if (global.b_scover=1) return(argument0);
	if (argument0.enemy=1) return(argument0);
	if (global.turn=argument0) return(argument0); //self inflict or heal deal
	if (oBCyberdwarf.c_stroke=1) return(argument0);
	hitting=argument0;
	if (argument0!=oBCyberdwarf.id) {
	if (instance_exists(oBHoopz)) { if (global.b_evade>0 && argument0=oBHoopz.id) return(hitting); }
	if (global.b_cover=1) global.b_cover=argument0;
	if (global.b_cover==argument0) {
	oBCyberdwarf.x=argument0.x-20;
	oBCyberdwarf.depth=argument0.depth-1;
	oBCyberdwarf.y=argument0.fy-oBCyberdwarf.footy;
	hitting=oBCyberdwarf.id;
	//save id of who
	}
	}
	return(hitting);


}
