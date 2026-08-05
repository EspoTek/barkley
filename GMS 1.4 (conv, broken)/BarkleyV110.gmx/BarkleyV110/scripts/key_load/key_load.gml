function key_load() {
	if (file_exists("controls.txt")) {
	global.__gm6file=file_text_open_read("controls.txt");
	if (file_text_read_string(global.__gm6file)="Do not edit or delete this file.") {
	file_text_readln(global.__gm6file);
	uu=0;
	repeat(global.key_amount) { //+5
	global.cpref[uu]=file_text_read_real(global.__gm6file);
	file_text_readln(global.__gm6file);
	uu+=1;
	}
	} else key_init();
	file_text_close(global.__gm6file);
	} else key_init();
	key_doset();



}
