function sConvert(argument0, argument1) {
	/*gm6argdefaults*/ if (argument0==undefined) argument0=0; if (argument1==undefined) argument1=0;
	//Name of temp file, name of legit file
	var red, wri, ggg;
	red=file_text_open_read(argument0);
	wri=file_text_open_write(argument1);
	while (file_text_eof(red)=0) {
	ggg=file_text_read_string(red);
	//GM6's file_write_real used the OS locale decimal separator, so a European
	//locale wrote "3,5" and this pass repaired it. GameMaker 2024 always writes
	//".", so the replacement can no longer fix anything -- it can only corrupt a
	//saved string that legitimately contains a comma. Dropped.
	file_text_write_string(wri,ggg);
	file_text_readln(red);
	file_text_writeln(wri);
	}
	file_text_close(red);
	file_text_close(wri);
	file_delete(argument0);
	//file_rename('text.txt',argument0);


}
