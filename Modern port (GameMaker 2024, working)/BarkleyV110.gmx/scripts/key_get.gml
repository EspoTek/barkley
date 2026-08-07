if (keyboard_lastkey!=0) { 
ii=0;
while (ii<global.key_amount) {
if (keyboard_lastkey=global.cpref[ii]) return(0);
ii+=1;
}
active=0;
key_makestuff.doall+=1;
global.cpref[class]=keyboard_lastkey;
key_checker(class);
trr=key_recognizer(global.cpref[class]);
keyboard_lastkey=0;
sP(1);
io_clear(); //added new to fix enter glitch
return(1);
}
return(0);