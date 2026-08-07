//issue is that arg number for speed is overriding jump speed enhance
com=queue[0,0];
if (com=-1 || halt=1) exit;
global.cinema=1; //recently added
sub=queue[0,1];
///////////////////////////////////////////////////////////////////MOVE
if (sub="move") {
if (start=0) { cou=0; xx=com.x; yy=com.y; spd=com.spd; start=1; }
cou+=global.rd;
if (cou>45) start=2;
if (queue[0,3]!=0) global.temp=queue[0,3];
else global.temp=com.spd;
com.spd=global.temp;
com.move=queue[0,2];
if (queue[0,2]="up") {
 if (com.y<=yy-16) { com.y=yy-16; start=2; }
}
if (queue[0,2]="upright") {
 if (com.y<=yy-16 && com.x>=xx+16) { com.y=yy-16; com.x=xx+16; start=2; }
}
if (queue[0,2]="upleft") {
 if (com.y<=yy-16 && com.x<=xx-16) { com.y=yy-16; com.x=xx-16; start=2; }
}
if (queue[0,2]="down") {
 if (com.y>=yy+16) { com.y=yy+16; start=2; }
}
if (queue[0,2]="downright") {
 if (com.y>=yy+16 && com.x>=xx+16) { com.y=yy+16; com.x=xx+16; start=2; }
}
if (queue[0,2]="downleft") {
 if (com.y>=yy+16 && com.x<=xx-16) { com.y=yy+16; com.x=xx-16; start=2; }
}
if (queue[0,2]="right") {
 if (com.x>=xx+16) { com.x=xx+16; start=2; }
}
if (queue[0,2]="left") {
 if (com.x<=xx-16) { com.x=xx-16; start=2; }
}
if (start=2) { com.spd=spd; com.move=""; event_user(0); }
}
/////////////////////////////////////////////////////////////FACE
if (sub="face" || sub="look") {
if (start=0) { start=1; cou=0; }
cou+=global.rd;
if (queue[0,2]="up") { com.t=0; start=2; }
if (queue[0,2]="right") { com.t=1; start=2; }
if (queue[0,2]="down") { com.t=2; start=2; }
if (queue[0,2]="left") { com.t=3; start=2; }
if (cou>5) { com.move=""; event_user(0); }
}
/////////////////////////////////////////////////////////////////JUMP
if (sub="jump") {
if (start=0) { 
if (queue[0,2]="start") { oldspd=com.spd; com.spd+=2; }
if (queue[0,2]="end") { com.spd-=2; }
start=1; 
} else if (com.jcou=0) start=2;
if (queue[0,2]="start") { com.jumping=1; }
if (queue[0,2]="end") { if (com.jumping=0) com.jumping=2; }
if (start=2) { event_user(0); }
}
/////////////////////////////////////////////////////////////////WAIT
if (sub="wait") {
if (start=0) { start=1; cou=0; }
cou+=global.rd;
if (cou>queue[0,2]*30) event_user(0);
}
////////////////////////////////////////////////////////////////DIALOG
if (sub="dialog") {
if (start=0) { of=global.dia_face; on=global.dia_name; }
if (queue[0,3]=1) { global.dia_face=com.face; global.dia_name=com.name; }
if (start=0) { bbb=sDialog(queue[0,2],queue[0,4],queue[0,5],queue[0,6],queue[0,7],queue[0,8]); start=1; }
global.dia_face=0;
if (global.skip=1) { with (bbb) instance_destroy(); }
if (instance_exists(bbb)=0) {
if (ls!=-1) { sound_stop(ls); ls=-1; }
event_user(0);
}
}
if (sub="create") {
instance_create(0,0,queue[0,2]);
event_user(0);
}
if (sub="destroy") {
with (queue[0,2]) instance_destroy();
event_user(0);
}
if (sub="user") {
with (queue[0,2]) event_user(0);
event_user(0);
}
if (sub="code") {
// GM6 shim: when a nested event_user(0)/event_user(1) chain unwinds without
// re-reading the queue (halt via sDodie, or the queue emptying), an outer frame
// falls back into this block with a stale sub="code" while queue[0] already
// holds the NEXT row -- e.g. the oIntro3 death drop leaves a "wait" row here,
// so queue[0,2] is a number, not a script. GM6 fed that to execute_string,
// errored non-fatally and carried on (the author's "some reason goes under 0"
// comment in User Defined 0 is this same re-entrancy); GameMaker 2024's
// script_execute is fatal (dispatched builtin camera_create_view), so only
// dispatch real scripts. The unconditional event_user(0) row-advance below is
// original behavior and must stay.
if (start=0) { start=1; if (!is_string(queue[0,2]) && script_exists(queue[0,2])) script_execute(queue[0,2]); }
event_user(0);
}
if (sub="effect") {
if (start=0) { start=1; bbb=sTrans(queue[0,2],queue[0,3],com); }
if (instance_exists(bbb)=0) event_user(0);
}
if (sub="sound") {
sound_play(queue[0,2]);
ls=queue[0,2];
event_user(0);
}
if (sub="pan") {
if (start=0) {
global.temp=com;
global.temp2=queue[0,2];
oPan.x=global.camera.x;
oPan.y=global.camera.y;
global.camera=oPan;
with (oPan) { follow=global.temp; spd=global.temp2; go=1; }
start=1;
}
if (global.skip=1) { oPan.go=0; }
if (oPan.go=0) { global.camera=com; event_user(0); }
}
if (sub="item") { /////////////////////////////////////////////ITEM
sDialog("set",2,"center");
if (start=0) { sItem(queue[0,2],queue[0,3]); bbb=sDialog("Got " + string(queue[0,3]) +" "+ queue[0,2] +"(s)!"); start=1; }
sDialog("set",1,"bottom");
if (instance_exists(bbb)=0) {
event_user(0);
}
}
if (sub="tint") {
oTinter.val0=queue[0,2];
oTinter.val1=queue[0,3];
event_user(0);
}
if (sub="quick") {
if (start=0) {
start=1;
sss=instance_create(0,0,oQuicker);
if (queue[0,2]="right") sss.key=0;
if (queue[0,2]="up") sss.key=1;
if (queue[0,2]="left") sss.key=2;
if (queue[0,2]="down") sss.key=3;
if (queue[0,2]="action") sss.key=4;
if (queue[0,2]="cancel") sss.key=5;
}
if (instance_exists(sss)=0) {
event_user(0);
}
}
if (sub="cond") {
good=0;
script_execute(queue[0,2]);
if (good=1) event_user(0);
}
if (sub="hurt") {
if (start=0) {
hrt=instance_create(0,0,queue[0,2]);
hrt.master=com;
hrt.val0=queue[0,3]; //object
hrt.val1=queue[0,4]; //object
hrt.val2=queue[0,5]; //object
start=1;
}
if (instance_exists(hrt)=0) {
if (global.die<=0) { 
sDodie();
} else event_user(0);
}
}
//
if (sub="catchup") {
with (oBarkley) { x+=0.1; sFollow("step"); x-=0.1; }
global.disrupt=0;
with (oFollower) { if (point_distance(x,y,oBarkley.x,oBarkley.y)>1) global.disrupt=1; }
if (global.disrupt=0) event_user(0);
}
