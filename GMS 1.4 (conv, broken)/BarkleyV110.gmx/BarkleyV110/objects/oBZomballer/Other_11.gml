if (exec!=-1) { throwv=1; global.descriptor="Zombie Pass"; exit; }
throwv=1;
img=4;
sS(mBThrow);
ggg=sThrow(x,y-10,target.x,target.y,10+random(5),40);
global.b_obj=ggg;
ggg.image_index=1; ggg.image_speed=0;
ggg.target=target;
ggg.depth=target.depth-1;
alarm[0]=30; //finish turn 60
