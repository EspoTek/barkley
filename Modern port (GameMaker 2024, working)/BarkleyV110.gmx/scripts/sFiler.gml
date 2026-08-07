for (ccc=0; ccc<3; ccc+=1) {
global.load_slot[ccc]=0;
if (file_exists('Save'+string(ccc+1)+'.sav')) {
tfl=file_text_open_read('Save'+string(ccc+1)+'.sav');
global.load_gold[ccc]=file_text_read_real(tfl); file_text_readln(tfl);
global.load_hours[ccc]=file_text_read_real(tfl); file_text_readln(tfl);
global.load_minutes[ccc]=file_text_read_real(tfl); file_text_readln(tfl);
global.load_seconds[ccc]=file_text_read_real(tfl); file_text_readln(tfl);
global.load_location[ccc]=file_text_read_string(tfl); file_text_readln(tfl);
global.load_vict[ccc]=file_text_read_real(tfl); file_text_readln(tfl); 
global.load_char[ccc,0]=file_text_read_real(tfl); file_text_readln(tfl);
global.load_face[ccc,0]=file_text_read_real(tfl); file_text_readln(tfl);
global.load_lvl[ccc,0]=file_text_read_real(tfl); file_text_readln(tfl);
global.load_char[ccc,1]=file_text_read_real(tfl); file_text_readln(tfl);
global.load_face[ccc,1]=file_text_read_real(tfl); file_text_readln(tfl);
global.load_lvl[ccc,1]=file_text_read_real(tfl); file_text_readln(tfl);
global.load_char[ccc,2]=file_text_read_real(tfl); file_text_readln(tfl);
global.load_face[ccc,2]=file_text_read_real(tfl); file_text_readln(tfl);
global.load_lvl[ccc,2]=file_text_read_real(tfl); file_text_readln(tfl);
global.load_char[ccc,3]=file_text_read_real(tfl); file_text_readln(tfl);
global.load_face[ccc,3]=file_text_read_real(tfl); file_text_readln(tfl);
global.load_lvl[ccc,3]=file_text_read_real(tfl); file_text_readln(tfl);
global.load_char[ccc,4]=file_text_read_real(tfl); file_text_readln(tfl);
global.load_face[ccc,4]=file_text_read_real(tfl); file_text_readln(tfl);
global.load_lvl[ccc,4]=file_text_read_real(tfl); file_text_readln(tfl);
global.load_char[ccc,5]=-1; 
file_text_close(tfl);
} else global.load_gold[ccc]=-777;
if (global.load_gold[0]!=-777) global.load_slot[ccc]=1;
}