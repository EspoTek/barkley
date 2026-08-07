//Barkley - 30 brain - 75, 200, 200 (300) - NOW 
if (argument0="doubleteam") { sMoveSet(0,floor(_brain*.66),0.25,0,'enemy',125); } //6 of these
else if (argument0="showboatjam") { sMoveSet(1,_brain*4,0.2,0,'enemy',999,1); } //stat bonus
else if (argument0="vampslam") { sMoveSet(3,_brain*2,0.1,0,'enemy',999,1); }
else if (argument0="holydunk") { sMoveSet(2,_brain*6,0.3,0,'enemy',999,1); }
else if (argument0='ghostmuscle') {
sBCondition('power',floor(_rpower*.15),id);
sBCondition('brain',floor(_rbrain*.15),id);
}
//Balthios - 50 brain at lvl 10
if (argument0="flame") { sBCondition('power',-floor(_rpower*.15),id); } //all
else if (argument0="ice") { sMoveSet(0,_brain*3,0.2,0,'enemy',999,1); }
else if (argument0="water") {  }
else if (argument0="thunder") { sMoveSet(5,_brain/2,0.2,0,'enemy',999); } //5 attack
else if (argument0="wind0") { sMoveSet(0,_brain/2,0.5,0,'enemy',999,1); } //1 per enemy plus all attack
else if (argument0="wind1") { sMoveSet(0,_brain,0.5,0,'enemyall',999,1); }
else if (argument0="snail") { sBCondition("speed",-999,id); } //50% all
else if (argument0="muscle") { //does this 6 times i think?
mw=floor(random(4));
if (mw=0) { sBCondition('guard',-ceil(_rguard*.05),target); }
if (mw=1) { sBCondition('power',-ceil(_rpower*.05),target); }
if (mw=2) { sBCondition('speed',-ceil(_rspeed*.05),target); }
if (mw=3) { sBCondition('brain',-ceil(_rbrain*.05),target); }
}
//Hoopz
if (argument0='rapid') sMoveSet(0,_brain/5  ,0.25,0,'enemy',50,1); //no variable
if (argument0='aimed') sMoveSet(0,_brain    ,0.25,0,'enemy',100,1); //stary is 100
if (argument0='mega')  sMoveSet(0,_brain*2,0.25,0,'enemy',75,1); //vil max is 2.5
//Cyber
if (argument0='chaff') {
sMoveSet(0,200,0.5,0,'enemyall',100,1);
with (oBattler) { 
if (enemy=1) {
mw=floor(random(4));
if (mw=0) { sBCondition('guard',-ceil(_rguard*.13),id); }
if (mw=1) { sBCondition('power',-ceil(_rpower*.13),id); }
if (mw=2) { sBCondition('speed',-ceil(_rspeed*.13),id); }
if (mw=3) { sBCondition('brain',-ceil(_rbrain*.13),id); }
}
}
}
//Vince
if (argument0='refract') {
sMoveSet(10,_brain/2,0.1,1,'enemy',200); //was 1
}