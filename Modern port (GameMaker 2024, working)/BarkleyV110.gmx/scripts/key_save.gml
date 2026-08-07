file_open_write('controls0.txt');
file_write_string('Do not edit or delete this file.');
file_writeln();
uu=0;
repeat(global.key_amount) { //+5
file_write_real(global.cpref[uu]);
file_writeln();
uu+=1;
}
file_close();
sConvert('controls0.txt','controls.txt');
