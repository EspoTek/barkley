global.temp=0;
global.str="";
with (oBPlacer) {
global.str+="global.b_px["+string(global.temp)+"]="+string(x)+"; global.b_py["+string(global.temp)+"]="+string(y)+" ";
global.temp+=1;
}
// get_string display removed (dev tool)
