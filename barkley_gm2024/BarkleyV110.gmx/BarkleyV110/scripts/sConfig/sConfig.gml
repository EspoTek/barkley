function sConfig(argument0) {
	/*gm6argdefaults*/ if (argument0==undefined) argument0=0;
	arg=argument0; //0init-1save-2load
	if (arg=1) tfl=file_text_open_write("config0.txt");
	else if (arg=2) tfl=file_text_open_read("config.txt");
	//
	if (arg=0) global.sat[0]=0; // 0=fit window, 1=integer scaling (was window scale 1x/2x/3x)
	else if (arg=1) { file_text_write_real(tfl,global.sat[0]); file_text_writeln(tfl); }
	else { global.sat[0]=file_text_read_real(tfl); file_text_readln(tfl); }
	if (arg=0) global.sat[1]=0;
	else if (arg=1) { file_text_write_real(tfl,global.sat[1]); file_text_writeln(tfl); }
	else { global.sat[1]=file_text_read_real(tfl); file_text_readln(tfl); }
	if (arg=0) global.sat[2]=2;
	else if (arg=1) { file_text_write_real(tfl,global.sat[2]); file_text_writeln(tfl); }
	else { global.sat[2]=file_text_read_real(tfl); file_text_readln(tfl); }
	if (arg=0) global.sat[3]=1;
	else if (arg=1) { file_text_write_real(tfl,global.sat[3]); file_text_writeln(tfl); }
	else { global.sat[3]=file_text_read_real(tfl); file_text_readln(tfl); }
	if (arg=0) global.sat[5]=0;
	else if (arg=1) { file_text_write_real(tfl,global.sat[5]); file_text_writeln(tfl); }
	else { global.sat[5]=file_text_read_real(tfl); file_text_readln(tfl); }
	if (arg=0) global.sat[6]=1; // 0=off, 1=Arcade (default: dosbox-crt is an acquired taste), 2=Dosbox CRT
	else if (arg=1) { file_text_write_real(tfl,global.sat[6]); file_text_writeln(tfl); }
	else { if (file_text_eof(tfl)) global.sat[6]=1; else { global.sat[6]=min(2,max(0,file_text_read_real(tfl))); file_text_readln(tfl); } } // configs from before the FILTER row have 5 lines; clamp covers the old 15-preset builds
	if (arg=0) global.sat[7]=10; // Dosbox CRT corner-warp percent, tuned with +/-
	else if (arg=1) { file_text_write_real(tfl,global.sat[7]); file_text_writeln(tfl); }
	else { if (file_text_eof(tfl)) global.sat[7]=10; else { global.sat[7]=min(25,max(0,file_text_read_real(tfl))); file_text_readln(tfl); } }
	//Dosbox CRT tune-menu strengths, 0..25 where 25 = as dosbox-crt shipped.
	//Defaults are the user's tuned look (2026-08-07):
	//sat[8]=corner shadow 10, 9=vignette 10, 10=scanlines 20, 11=mask 15,
	//12=grain 10, 13=ghosting 10
	tdef[8]=10; tdef[9]=10; tdef[10]=20; tdef[11]=15; tdef[12]=10; tdef[13]=10;
	for (tcl=8; tcl<=13; tcl+=1) {
	if (arg=0) global.sat[tcl]=tdef[tcl];
	else if (arg=1) { file_text_write_real(tfl,global.sat[tcl]); file_text_writeln(tfl); }
	else { if (file_text_eof(tfl)) global.sat[tcl]=tdef[tcl]; else { global.sat[tcl]=min(25,max(0,file_text_read_real(tfl))); file_text_readln(tfl); } }
	}
	//sat[14]=Realistic Voice Acting (dialogue bloops) on/off, default on
	if (arg=0) global.sat[14]=1;
	else if (arg=1) { file_text_write_real(tfl,global.sat[14]); file_text_writeln(tfl); }
	else { if (file_text_eof(tfl)) global.sat[14]=1; else { global.sat[14]=min(1,max(0,file_text_read_real(tfl))); file_text_readln(tfl); } }
	//sat[15..18]=voice variant 0-2 per character: 15=Barkley 16=Hoopz 17=Jordan 18=Balthios
	//Defaults are the user's audition picks (2026-08-07)
	tdef[15]=1; tdef[16]=1; tdef[17]=0; tdef[18]=2;
	for (tcl=15; tcl<=18; tcl+=1) {
	if (arg=0) global.sat[tcl]=tdef[tcl];
	else if (arg=1) { file_text_write_real(tfl,global.sat[tcl]); file_text_writeln(tfl); }
	else { if (file_text_eof(tfl)) global.sat[tcl]=tdef[tcl]; else { global.sat[tcl]=min(2,max(0,file_text_read_real(tfl))); file_text_readln(tfl); } }
	}
	//
	if (arg!=0) file_text_close(tfl);
	if (arg=1) sConvert("config0.txt","config.txt");


}
