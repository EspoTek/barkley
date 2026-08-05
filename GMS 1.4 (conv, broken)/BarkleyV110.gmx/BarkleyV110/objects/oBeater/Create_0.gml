r=20;
{ tttmp=instance_create(x+r,y,oWave); tttmp.direction=0; }
{ tttmp=instance_create(x-r,y,oWave); tttmp.direction=180; }
{ tttmp=instance_create(x,y+r,oWave); tttmp.direction=270; }
{ tttmp=instance_create(x,y-r,oWave); tttmp.direction=90; }
