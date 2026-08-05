if (exec!=-1) { kick=1; global.descriptor="Zomballistic"; exit; }
kick=0;
img=5;
sS(mZomballer1);
ggg=sThrow(x+15,y+10,target.x,target.y,5+random(2),30);
global.b_obj=ggg;
ggg.image_index=1; ggg.image_speed=0;
ggg.target=target;
ggg.depth=target.depth-1;
alarm[0]=30; //finish turn
