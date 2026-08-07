//show_message(string(argument2));
if (argument0='write') {
if (argument1='real') file_text_write_real(tfl,argument2);
else file_text_write_string(tfl,argument2);
file_text_writeln(tfl);
}
if (argument0='read') {
if (argument1='real') basf=file_text_read_real(tfl);
else basf=file_text_read_string(tfl);
file_text_readln(tfl);
return(basf);
}