function key_save() {
	global.__gm6file=file_text_open_write("controls0.txt");
	file_text_write_string(global.__gm6file, "Do not edit or delete this file.");
	file_text_writeln(global.__gm6file);
	uu=0;
	repeat(global.key_amount) { //+5
	file_text_write_real(global.__gm6file, global.cpref[uu]);
	file_text_writeln(global.__gm6file);
	uu+=1;
	}
	file_text_close(global.__gm6file);
	sConvert("controls0.txt","controls.txt");



}
