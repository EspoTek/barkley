tft="";
global.temp=0;
with (oBPlacer) {
if (state!=0) {
oBGenerator.tft=oBGenerator.tft + "ene[" + string(global.temp) + "]=\"" + object_get_name(bn[state]) + ",";
oBGenerator.tft=oBGenerator.tft + string(lvl) + ",";
oBGenerator.tft=oBGenerator.tft + string(x) + ",";
oBGenerator.tft=oBGenerator.tft + string(y) + "\";";
global.temp+=1;
}
}
//tft+="ene["+string(global.temp)+"]='';";
//As KeyPress_16: get_string was the original readout, dropped by the importer.
show_debug_message(tft);
