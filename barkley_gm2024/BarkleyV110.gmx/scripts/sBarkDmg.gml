//Barkley
if (argument0='pass') { //del is 0-40 (45 max)
 sMoveSet(12,floor(_power+((_power/40)*del)),0.25,1,'enemy',50); //x1 to x2
} else if (argument0='freethrow') { //del is 0-24 (make a maxer)
 sMoveSet(11,1,0.25,1,'enemy',25+(del*5)); //0 is lowest power
} else if (argument0='fadeaway') { //RVEL is 0-10 variable
 sMoveSet(10,1,0.1,1,'enemy',100); //same as free throw power
} else if (argument0='forward') {
 sMoveSet(10,floor((_power/10)*rvel),0.1,1,'enemy',100);
} else if (argument0='jumper') { 
 sMoveSet(10,floor((_power/20)*rvel),0.1,1,'enemy',150);
}
//Hoopz
if (argument0='rapid') sMoveSet(0,1,0.5,1,'enemy',75,1); //no variable
if (argument0='aimed') { //negative staray when click first
sMoveSet(0,max(1,floor((_power/120)*stray)),0.5,1,'enemy',200,1); //stary is 120
}
if (argument0='mega') sMoveSet(0,floor(_power*vil),0.5,1,'enemy',50,1); //vil max is 2.5
//Cyberdwarf - ert is 1 or 1.25 dmg bonus for alternate
if (argument0='jab') sMoveSet(0,floor((_power/6)*ert),0.2,1,'enemy',175,1); //was 6,4,2
if (argument0='kick') sMoveSet(0,floor((_power/4)*ert),0.2,1,'enemy',175,1);
if (argument0='punch') sMoveSet(0,floor((_power/2)*ert),0.2,1,'enemy',175,1);
//Balthios - dmf is manual brain minuser, sal is factored on brain but can't be done on counter
if (argument0='zauber') sBCondition('vp',-floor(dmf),target.id); //30
if (argument0='counter') sBCondition('vp',-floor(dmf),target.id); //60
if (argument0='stab') sMoveSet(10,floor((_power/2.5)+((_power/1.5)*(suc))),0.2,1,'enemy',200,1); //3,2