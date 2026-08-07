function key_load() {
	if (file_exists("controls.txt")) {
	var __f=file_text_open_read("controls.txt");
	if (file_text_read_string(__f)="Do not edit or delete this file.") {
	file_text_readln(__f);
	uu=0;
	repeat(global.key_amount) { //+5
	global.cpref[uu]=file_text_read_real(__f);
	file_text_readln(__f);
	uu+=1;
	}
	} else key_init();
	file_text_close(__f);
	} else key_init();
	key_doset();



}
