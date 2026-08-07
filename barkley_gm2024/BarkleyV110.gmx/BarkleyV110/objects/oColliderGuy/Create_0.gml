event_inherited();
sprt=sTurkey;
t=1;
vis=instance_create(x,y,oVision)
vis.master=id;
//
sBattled("status",id);
y+=26;
x+=12;
mask_index=sRMask;
ambattler=1;
walk=1;
spd=1.1;
rspd=2;
aware=0;
lvx=x; //lastx
lvy=y;
px=0;
py=0;
start=0; //states
aco=0; //array counter
zou=0; //safety
stil=0; //stops them for 1 frame
solid=0;
ydy=0;
xdx=0;
rtm="nope"; //for retaining move when freeze
