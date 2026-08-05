global.temp=0;
global.str="";
with (oBPlacer) {
global.str+="global.b_px["+string(global.temp)+"]="+string(x)+"; global.b_py["+string(global.temp)+"]="+string(y)+" ";
global.temp+=1;
}
//GM6 showed this through get_string('huh',global.str), purely so the generated
//code could be read off and copied; the importer dropped the call and left a
//bare `(global.str);`. Blocking dialogs are not usable here, so log it instead.
show_debug_message(global.str);
