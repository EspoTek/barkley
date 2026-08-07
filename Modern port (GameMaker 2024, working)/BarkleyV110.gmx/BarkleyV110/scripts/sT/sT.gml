function sT(argument0, argument1, argument2) {
	/*gm6argdefaults*/ if (argument0==undefined) argument0=0; if (argument1==undefined) argument1=0; if (argument2==undefined) argument2=0;
	//Tinter
	//port: oBTinter is only made by oBBalthios's Create, so it exists only when
	//Balthios is in the battle party (oBGhastly makes its own if none is present).
	//Enemies with a tint attack -- oBShadow0, oBBanshee, oBGrenade -- call this
	//regardless, so fighting one without Balthios addressed an object with no
	//instances and killed the battle.  GM6 ignored the writes and simply drew no
	//tint; `with` is that same no-op.  Creating one here instead would add a tint
	//the shipped game never showed.
	with (oBTinter) {
	 col=argument0;
	 dalp=argument1;
	 dspd=argument2;
	}


}
