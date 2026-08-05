function sDrawBox(argument0, argument1, argument2, argument3) {
	/*gm6argdefaults*/ if (argument0==undefined) argument0=0; if (argument1==undefined) argument1=0; if (argument2==undefined) argument2=0; if (argument3==undefined) argument3=0;
	//x,y,magic/health,object
	var jj;
	draw_sprite(sBMeter,2,argument0,argument1);
	if (argument2="magic") {
	jj=20-ceil((20/argument3._rbp)*max(0,argument3._bp));
	jj=min(jj,20);
	draw_sprite_part(sBMeter,1,jj+1,0,21-jj,9,argument0+1+jj,argument1);
	} else {
	jj=20-ceil((20/argument3._rvp)*max(0,argument3._vp));
	jj=min(jj,20);
	draw_sprite_part(sBMeter,0,jj+1,0,21-jj,9,argument0+1+jj,argument1);
	}


}
