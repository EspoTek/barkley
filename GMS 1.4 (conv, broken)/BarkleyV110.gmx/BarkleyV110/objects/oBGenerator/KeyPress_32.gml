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
(tft);
