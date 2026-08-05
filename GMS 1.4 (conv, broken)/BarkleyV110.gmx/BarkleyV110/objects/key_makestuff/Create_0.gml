doall=-1;
sV();
//up,down,left,right,action,cancel,start
x=1.5;
y=1;
y+=0.5;
global.key_amount=7;
ss=0;
ggg=0;
www=17-1;
given=0;
while (given<global.key_amount) {
vvv=instance_create(x+46,y+23+ggg,key_control);
global.cserv[given]=vvv;
vvv.class=given;
ggg+=www;
given+=1;
}
dd=0;
repeat(global.key_amount) {
global.cserv[dd].trr=key_recognizer(global.cpref[dd]);
dd+=1;
}
global.cserv[0].name="Up";
global.cserv[1].name="Down";
global.cserv[2].name="Left";
global.cserv[3].name="Right";
global.cserv[4].name="Action";
global.cserv[5].name="Cancel";
global.cserv[6].name="Start";

