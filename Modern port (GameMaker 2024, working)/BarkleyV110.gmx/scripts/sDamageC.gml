//Target, message, color
global.temp7=0;
global.temp6=argument0.x;
with (oDamage) if (x=global.temp6) global.temp7+=1;
global.temp7=global.temp7*10;
son=(instance_create(argument0.x,argument0.y-global.temp7,oDamage)); 
son.depth=argument0.depth-1; 
son.dmg=argument1;
son.col=argument2;