//Name of temp file, name of legit file
red=file_text_open_read(argument0);
wri=file_text_open_write(argument1);
while (file_text_eof(red)=0) {
ggg=file_text_read_string(red);
ggg=string_replace_all(ggg,',','.');
file_text_write_string(wri,ggg);
file_text_readln(red);
file_text_writeln(wri);
}
file_text_close(red);
file_text_close(wri);
file_delete(argument0);
//file_rename('text.txt',argument0);