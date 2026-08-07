if (oBCyberdwarf.stage!=2.1 || oBCyberdwarf.doing!=12) exit;
domove=-1;
if (sKey(global.key_left)) if (sKey(global.key_action,1) || sKey(global.key_cancel,1) || sKey(global.key_start,1)) domove=3;
if (sKey(global.key_down)) if (sKey(global.key_action,1) || sKey(global.key_cancel,1) || sKey(global.key_start,1)) domove=4;
if (sKey(global.key_right)) if (sKey(global.key_action,1) || sKey(global.key_cancel,1) || sKey(global.key_start,1)) domove=5;

if (sKey(global.key_action,1)) { //jab
fill=floor(fill);
domove=0;
}
if (sKey(global.key_cancel,1)) { //kick
fill=floor(fill);
domove=1;
}
if (sKey(global.key_start,1)) { //punch
fill=floor(fill);
domove=2;
}
if (domove!=-1) {
if (fill+mov[domove]<length) { //*999
fill=ceil(fill); //ceil
hit[cur,0]=fill;
hit[cur,1]=domove;
fill+=mov[domove]; 
cur+=1;
hit[cur,0]=-1;
if (domove<3) oBCyberdwarf.stage=100+domove;
else { oBCyberdwarf.doing=8+domove-3; oBCyberdwarf.stage=2; alarm[0]=30; }
exit;
} else event_user(0);
}
fill+=0.5; //.5
if (fill>=length) event_user(0);
/* */
/*  */
