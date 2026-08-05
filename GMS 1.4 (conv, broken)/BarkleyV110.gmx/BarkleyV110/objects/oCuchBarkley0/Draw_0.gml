if (num<nam) num+=1;
if (num>nam) num-=1;
draw_sprite(sCuchBarkley0,0,x,y);
bbb=floor(num/10);
xxx=floor((num mod 10));
draw_sprite(sCuchBarkley0,bbb+1,x,y);
draw_sprite(sCuchBarkley0,xxx+1,x+32,y);
