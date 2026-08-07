if (file_exists('controls.txt')) {
file_open_read('controls.txt');
if (file_read_string()='Do not edit or delete this file.') {
file_readln();
uu=0;
repeat(global.key_amount) { //+5
global.cpref[uu]=file_read_real();
file_readln();
uu+=1;
}
} else key_init();
file_close();
} else key_init();
key_doset();
