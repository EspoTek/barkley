ttt=0;
ooo=0;
if (string_copy(dmessage[count],scount+lcount-1,1)=' ') {
while(ttt=0) {
temp1=string_copy(dmessage[count],scount+lcount,ooo);
if (string_copy(dmessage[count],scount+lcount+ooo,1)=' ') ttt=1;
ooo+=1;
if (ooo>25) ttt=1;
}
if (string_width(temp1)+string_width(cmessage[line])>width) { 
if (line>linemax) {
mdone=1;
} else {
line+=1;
//minus 1 
scount=scount+lcount; 
lcount=0; 
}
}
}
vrf=string_copy(dmessage[count],scount+lcount-1,1);
vrf2=string_copy(dmessage[count],scount+lcount-2,1);
if (vrf="@") {
mdone=1;
}
if (vrf=" ") chat=0;
if (vrf="." || vrf="!" || vrf="?" || vrf="," || vrf=";") {
chat=0;
//scount-=1;
if (vrf2='.' || string_letters(vrf2)!=vrf2 || string_upper(vrf2)!=vrf2) {
if (scount+lcount>3) {
if (vrf="," || vrf=";") wait=5;
else wait=20;
}
}
}
if (string_copy(dmessage[count],scount+lcount-1,1)="\") {
scount-=1;
dmessage[count]=string_replace(dmessage[count],'\','');
if (line>linemax) {
mdone=1;
} else {
line+=1;
//minus 1 
scount=scount+lcount; 
lcount=0; 
}
}
