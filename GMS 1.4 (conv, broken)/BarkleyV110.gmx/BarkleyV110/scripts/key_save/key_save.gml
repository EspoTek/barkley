function key_save() {
	var __f=file_text_open_write("controls0.txt");
	file_text_write_string(__f, "Do not edit or delete this file.");
	file_text_writeln(__f);
	uu=0;
	repeat(global.key_amount) { //+5
	file_text_write_real(__f, global.cpref[uu]);
	file_text_writeln(__f);
	uu+=1;
	}
	file_text_close(__f);
	sConvert("controls0.txt","controls.txt");



}
