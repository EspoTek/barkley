//Arg0=Num, Arg1=Digit amount
var nnn,p,jjj;
jjj=string(argument0);
if (argument1=0) nnn=2;
else nnn=argument1;
for (p=nnn; p>1; p-=1) {
if (string_length(string(argument0))<p) jjj=string(argument2)+jjj;
}
return(jjj);