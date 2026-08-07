jjj="~-_" + string_upper(argument[0]) + "_-~#";
for (l=1; string(argument[l])!='0'; l+=1) {
jjj+=argument[l]+"#";
}
if (cou<18) jjj+="####";
else jjj+="#";
cre+=jjj;
yy[cou]=string_height(cre)-55;
cou+=1;