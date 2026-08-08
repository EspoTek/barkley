function sVoxRate(argument0) {
	/*gm6argdefaults*/ if (argument0==undefined) argument0=0;
	//Realistic Voice Acting (port addition): per-character speech cadence,
	//milliseconds between bloops. Tuned against the real speakers' delivery:
	//Jordan's reference interview is slow and deliberate, Fresh Prince-era
	//Will Smith is quick. Unmapped speakers get the neutral default.
	var nl;
	nl=sVoxAlias(argument0); //name plates (the Priest) resolve to the person behind them
	if (string_pos("t-rex",nl)>0) return(125); //T-Rex Barkley lumbers (before the barkley match)
	if (string_pos("barkley",nl)>0 || string_pos("bakley",nl)>0) return(70);
	if (string_pos("hoopz",nl)>0) return(42);
	if (string_pos("jordan",nl)>0) return(95);
	if (string_pos("balthios",nl)>0) return(95);
	if (string_pos("dwarf",nl)>0) return(85);
	if (string_pos("vince",nl)>0) return(70); //cyborg: the robot-pool tick rate
	if (string_pos("hellbane",nl)>0) return(95); //Hellbane IS Balthios: same pace
	if (string_pos("lebron",nl)>0) return(60);
	//quick-talkers sit at ~2 frames: any faster overlaps the ~100ms bloops
	//into a phasey drone (user caught it) since bloops fire at most once/frame
	if (string_pos("garnett",nl)>0) return(65);
	if (string_pos("latta",nl)>0) return(62);
	if (string_pos("vitale",nl)>0) return(60);
	if (string_pos("brimley",nl)>0) return(115);
	if (string_pos("juwanna",nl)>0) return(60); //60ms drone floor
	if (string_pos("3000",nl)>0) return(55);
	if (string_pos("boyardee",nl)>0) return(70);
	if (string_pos("hundley",nl)>0 || string_pos("hughley",nl)>0) return(80);
	if (string_pos("pump",nl)>0) return(62); //chatters obnoxiously (60ms drone floor applies)
	//hash-voiced NPCs: stable hash-flavoured pace, banded by class --
	//monsters lumber (95-135ms), robots tick steadily (70), kids chatter
	//(45-60ms), everyone else 55-95ms
	var vh, vc;
	vh=sVoxHash(nl);
	if (vh>=0) {
	vc=sVoxClass(nl);
	if (vc=2) return(58+((vh div 12) mod 12)); //kids chatter, above the drone floor
	if (vc=3) return(95+((vh div 12) mod 41));
	if (vc=4) return(70);
	return(55+((vh div 12) mod 41));
	}
	return(55);


}
