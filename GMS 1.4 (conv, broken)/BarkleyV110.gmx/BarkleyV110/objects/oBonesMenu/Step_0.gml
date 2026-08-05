if (sel2=0) {
//if (global.scheme[2]<50) {
if (sKey(global.key_up,1)) { sP(); wager+=10; }
if (sKey(global.key_down,1)) { sP(); wager-=10; }
if (wager<20) wager=20;
if (wager>500) wager=500;
//}
//if (global.gold-wager<0)
if (sKey(global.key_left,1)) { sP(); sel=0; }
if (sKey(global.key_right,1)) { sP(); sel=1; }
if (sKey(global.key_action,1)) {
if (sel=0) {
if (global.gold<wager) sP(-1);
else { sP(1);
type=0; event_user(2);
//sel2=1; 
//dialog_yesno('Do you want to wager ' + string(wager) + ' crowns?');
}
} else { instance_destroy(); }
}
} else if (sel2=2) {
if (bone1.speed=0 && bone2.speed=0) {
//bbb+=1;
if (bone1.total=bone2.total) total1=bone1.total*4;
else total1=bone1.total+bone2.total;
if (sKey(global.key_action,1)) { 
//bbb=0; 
sel2=3;
with (bone1) instance_destroy();
with (bone2) instance_destroy();
bone1=instance_create(xpos+250,ypos+f0,oBonesDice);
bone2=instance_create(xpos+250,ypos+f1,oBonesDice);
}
}
} else if (sel2=3) {
if (bone1.speed=0 && bone2.speed=0) {
//bbb+=1;
if (bone1.total=bone2.total) total2=bone1.total*4;
else total2=bone1.total+bone2.total;
if (sKey(global.key_action,1)) { sP(1);
//bbb=0; 
sel2=4;
with (bone1) instance_destroy();
with (bone2) instance_destroy();
if (total1=total2) winner="Draw!";
else if (total1>total2) winner="You lose " + string(wager) + " neo-shekels!";
else winner="You won " + string(wager) + " neo-shekels!";
if (total1!=total2) {
if (total1>total2) { global.savetimer=9000; global.savefaggot=1; global.gold-=wager; type=1; event_user(2); }
else { instance_destroy(); with (oHundley) event_user(3); } //cinema
} else { type=2; event_user(2); }
}
} 
} else if (sel2=4) {
bbb+=1;
if (sKey(global.key_action,1)) {  sP(1);
bbb=0; 
total1=99;
total2=99;
sel2=0;
}
}

