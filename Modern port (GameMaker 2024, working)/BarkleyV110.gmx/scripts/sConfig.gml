arg=argument0; //0init-1save-2load
if (arg=1) tfl=file_text_open_write('config0.txt');
else if (arg=2) tfl=file_text_open_read('config.txt');
//
if (arg=0) global.sat[0]=1;
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
//
if (arg!=0) file_text_close(tfl);
if (arg=1) sConvert('config0.txt','config.txt');