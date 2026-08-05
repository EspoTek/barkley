//Arg0 is delimited item effect, must call itemuse before
value=real(string_digits(argument0));
effect=string_letters(argument0);
duration='temp';
comm=0; //command id, applied by sBItemComm (was an execute_string'd code string)

if (string_count("%",argument0)>0) percent=1;
else percent=0;
//Cure ailments
if (string_count("revive",string_lower(argument0))>0) {
comm=1;
} else if (string_count("cure",string_lower(argument0))>0) { //space after efect
effect=string_lower(string_replace(effect,"Cure",""));
if (string_count("ailments",string_lower(argument0))>0) comm=2;
else if (string_count("all",string_lower(argument0))>0) comm=3;
else comm=4;
} else {
effect=string_lower(effect);
}
//Set code for stat modify
if (percent=0) {
if (effect="vp") { comm=5; }
if (effect="bp") { comm=6; }
if (effect="power") { comm=7; }
if (effect="guard") { comm=8; }
if (effect="speed") { comm=9; }
if (effect="brain") { comm=10; }
} else { //percent
if (effect="vp") { comm=11; }
if (effect="bp") { comm=12; }
if (effect="power") { comm=13; }
if (effect="guard") { comm=14; }
if (effect="speed") { comm=15; }
if (effect="brain") { comm=16; }
}
//apply code on objects - ADD DAMAGE OBJECT SHOWING EFFECT
if (area='single') {
player=who;
sBItemComm();
} else {
for (playe=0; global.party[playe]!=-1; playe+=1) {
player=global.b_pid[playe];
sBItemComm();
}
}
//cap all values
sVerifyStats();