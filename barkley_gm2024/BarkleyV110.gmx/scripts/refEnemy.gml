//Arg0 = Name, Arg1 = Level
//17-18 is the char average, 10 per
//split exp and gold to suit values
i=0; //for sM() moves
if (string_count('zomballer',string_lower(argument0))>0) { //15 - Powerhouse
_vp=31; _bp=1.1;
_power=4; _guard=2; _speed=3.2; _brain=2;
_gold=21; _exp=9;
sM("Zomballistic",33,50 ,60 ,1,.1,'enemy');
sM("Zombie Pass" ,33,100,30 ,1,.2,'enemy');
sM("Tornado Dunk",34,150,125,0,.2,'enemy');
} else if (string_count('ball brain',string_lower(argument0))>0) { //11 - Normal
_vp=23; _bp=0;
_power=3; _guard=2.5; _speed=3.5; _brain=1;
_gold=13; _exp=4;
sM("Head Ballin'"         ,20,100,60,1,.3,'enemy');
sM("Offensive Foul"       ,60,100,30,1,.1,'enemy');
sM("Contaminated Gatorade",20,100,20,1,.2,'enemy');
} else if (string_count('slam spectre',string_lower(argument0))>0) { //12-15tech - Defense block
_vp=25; _bp=3;
_power=3; _guard=3; _speed=4; _brain=0;
_gold=16; _exp=5.5;
sM("Ghast Toss"         ,75,100,30,1,.1,'enemy');
sM("Double Spirit Throw",25,100,30,1,.2,'enemy');
sM("Shadow Slay"        ,50,100,60,1,.2,'enemy'); //only does below two after gone
sM("Diabetes Breath"    ,50,100,80,1,.1,'enemy');
} else if (string_count('mutant baller',string_lower(argument0))>0 || string_count("d. mutumbo",string_lower(argument0))>0 || string_count('kobe bryant',string_lower(argument0))>0) {
_vp=30; _bp=1.5; //16
_power=4; _guard=2.5; _speed=2.8; _brain=1.5; //4,2.5,2.5,1.5
_gold=42; _exp=4.9;
if (string_count('kobe bryant',string_lower(argument0))>0) { _power=2; _vp=30; _exp=2.5; _gold=50; }
if (string_count('d. mutumbo',string_lower(argument0))>0) { _vp=65; _exp=0; _gold=5; } //45 vp
sM("Balla Dash"          ,33,200,100,1,.5,'enemy');
sM("Demi-Lightning Fists",33,75 ,20 ,1,.2,'enemy');
sM("Devolve"             ,34,50 ,3  ,1,.5,'enemy');
sM("Evolve"              ,50,50 ,3  ,1,.5,'enemy');
} else if (string_count('dread ref',string_lower(argument0))>0) { //14
_vp=35; _bp=0;
_power=3; _guard=2; _speed=4; _brain=2;
_gold=43; _exp=10;
sM("Knife Boot Face Gash",30,100,20,1,.1,'enemy');
sM("Circular Saw Rage"   ,20,50 ,40,1,.5,'enemy');
sM("Technical Foul"      ,30,50 ,3,1,.5,'enemy');
sM("Back-Up"             ,20,50 ,3,1,.5,'enemy');
} else if (string_count('whistle',string_lower(argument0))>0) { //13
_vp=20; _bp=1; //20
_power=3; _guard=3; _speed=3; _brain=2;
_gold=40; _exp=5.3;
sM("Foul Blaster" ,50,100,80 ,1,.1,'enemy');
sM("Magic Whistle",25,100,30 ,0,.2,'allyall');
sM("Burst Airflow",25,100,200,0,.3,'enemy');
} else if (string_count('ball droid',string_lower(argument0))>0) { //13
_vp=1; _bp=.6; //5 vp
_power=1.6; _guard=.75; _speed=4.5; _brain=7;
_gold=10; _exp=2.6;
sM("Spit On You Face",50,100,80,1,.1,'enemy');
sM("Smoke Breath"    ,50,75 ,3,1,.5,'enemy');
} else if (string_count('ball spider',string_lower(argument0))>0) { //13-1
_vp=35; _bp=.6;
_power=2; _guard=3.5; _speed=3; _brain=1;
_gold=21; _exp=11.5;
sM("Glaucoma Chomp",33,100,80 ,1,.1,'enemy');
sM("Web of Deception",33,100,80 ,1,.1,'enemy');
sM("Spider Slam"     ,34,150,150,0,.25,'enemy');
} else if (string_count('slam phantom',string_lower(argument0))>0) { //13
_vp=18; _bp=3;
_power=3; _guard=1.3; _speed=3.5; _brain=5;
_gold=30; _exp=3.2;
sM("Boomerang Ball" ,25,100,100,1,.1,'enemy');
sM("Phantom Healing",25,75 ,3,1,.5,'enemy');
sM("Phantom Boost"  ,25,100,80,1,.1,'enemy');
sM("Phantom Breeze" ,25,100,80,1,.1,'enemy');
} else if (string_count('mech gatorade',string_lower(argument0))>0) { //12
_vp=30; _bp=0;
_power=7; _guard=1; _speed=3; _brain=2;
_gold=51; _exp=3.4;
sM("Defective Cog",100,100,50,1,.1,'enemy');
sM("Danger Bolts" ,33 ,75 ,100,1,.1,'enemy');
sM("Gatorade Rain",33 ,200,150,0,.25,'allyall');
} else if (string_count('bodyguard',string_lower(argument0))>0) { //19
_vp=60; _bp=0;
_power=4.2; _guard=1.5; _speed=4; _brain=1.5; //4.5 power
_gold=0; _exp=40;
sM("Head Buster"    ,25,75 ,100,1,.2,'enemy');
sM("Knuckle Duster" ,25,50 ,200,1,.1,'enemy');
sM("Combination"    ,25,150,10,1,.25,'enemy');
sM("Goad"           ,25,200,140,1,.25,'enemy');
sM("Payback"        ,25,200,140,1,0,'enemy');
} else if (string_count('bainshee',string_lower(argument0))>0) { //15
_vp=18; _bp=0; //35
_power=3; _guard=1.5; _speed=3; _brain=5;
_gold=3; _exp=7; //85 gold
sM("Wail"    ,34,200,100,1,.2,'allyall');
sM("Entrance",33,50,140,1,.1,'enemy');
sM("Curse"   ,33,150,140,1,.25,'enemy');
}
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////BOSSES////////////////////////
if (string_count('bball monster',string_lower(argument0))>0) {
_vp=135;_bp=0; //90
_power=4; _guard=2.5; _speed=3; _brain=1.5;
_gold=98; _exp=50;
sM("Ball Punch"   ,15,80,80  ,1,.1,'enemy'); //was 20 all
sM("Brace Oneself",15,100,3  ,1,.5,'enemy');
sM("Ball Twister" ,15,150,50 ,1,.5,'enemy');
sM("Juke Spinner" ,35,180,5  ,1,.5,'enemy');
sM("Mega Jump"    ,20,100,3  ,1,.5,'enemy');
sM("Mega Stomp"   ,0 ,300,170,0,.2,'allyall');
} else if (string_count('vinceborg 2050',string_lower(argument0))>0) {
_vp=100;_bp=0; //40,0
_power=3.2; _guard=3; _speed=2.4; _brain=2; //3.2,3,2,2
_gold=66; _exp=40;
sM("Laser"         ,50,200,30,1,.1,'enemy');
sM("Refractor Beam",30,200,40,0,.5,'enemy');
sM("Recharge"      ,20,100,50,0,.5,'enemy');
} else if (string_count('michael jordan',string_lower(argument0))>0) {
_vp=70;_bp=5; //35, 5
_power=4; _guard=2; _speed=4; _brain=1.5;
_gold=76; _exp=60;
sM("Gun Shot"          ,20,100,80,1,.1,'enemy');
sM("H-H-Head Shot"     ,20,50,250,1,.5,'enemy');
sM("Swift Bolt Plus"   ,15,200,200,0,.5,'enemy');
sM("Defy Clispaeth"    ,15,100,50,0,.5,'enemy');
sM("Hurricane Bullets" ,30,100,45,0,.5,'enemy');
} else if (string_count('dr allard',string_lower(argument0))>0) { //last
_vp=75;_bp=5; //150
_power=3; _guard=1.5; _speed=3.5; _brain=6; //was 3.7
_gold=120; _exp=139;
sM("HGH Injection"         ,100,100,250,1,.5,'enemy');
sM("Diagnose Aspergers"    ,15,200,100,0,.5,'enemy');
sM("Heart Stab"            ,30,100,225,1,.25,'enemy');
sM("Dirty Needles"         ,30,75,30,1,.1,'enemy'); //was 75
sM("Faulty Plague Vaccine" ,15,100,75,0,.5,'enemy'); //was 150
sM("Self Lobotomy"         ,20,100,30,0,.5,'enemy');
} else if (string_count('ghost dad',string_lower(argument0))>0) {
_vp=230;_bp=5; //160
_power=3.6; _guard=2; _speed=4.3; _brain=1; //3.6, 2, 4, 1
_gold=123; _exp=200;
sM("Spook"             ,30,200,110 ,1,.2,'enemy');
sM("Ectoplasm"         ,20,100,250,1,.5,'enemy');
sM("Ghostly Curse"     ,15,200,100,0,.5,'enemy');
sM("Fog Breath"        ,15,100,50,0,.5,'enemy');
sM("Ghost Muscle"      ,20,100,30,0,.5,'enemy');
} else if (string_count('scott creelman',string_lower(argument0))>0) {
_vp=90;_bp=7; //was 60, 7
_power=3.5; _guard=2.1; _speed=4; _brain=2; //40,6.2,3.5,2.5,4,2
_gold=120; _exp=281;
sM("Low Blow"         ,20,100,150,1,.5,'enemy');
sM("BBall Bash"       ,15,200,75,1,.2,'enemy');
sM("Illusion Shot"    ,25,200,100,0,.1,'enemy');
sM("Kamikaze Jam"     ,25,100,500,0,.2,'enemy');
sM("Glory of BBall"   ,15,100,30 ,0,.5,'enemy');
} else if (string_count('duergar',string_lower(argument0))>0) {
_vp=90;_bp=5;
_power=4; _guard=2.5; _speed=2.5; _brain=2; //3 speed
_gold=0; _exp=10;
sM("Acid Arrow"                         ,33,100,200,1,.1,'enemy');
sM("Gem Storm"                          ,33,200,200,0,.1,'allyall');
sM("Gold Encrusted Pick Toss"           ,34,50,75,1,.1,'enemy');
} else if (string_count('diabeasty',string_lower(argument0))>0) {
_vp=60; _bp=5; //60,5,4,4,4,4
_power=4; _guard=2.5; _speed=3.5; _brain=3.5;
_gold=140; _exp=187;
sM("Glomp"                    ,25,100,180,1,.1,'enemy');
sM("Sugar Storm"              ,25,100,100,1,.1,'enemy');
sM("Grasp of Glucose"         ,25,80,100,1,.1,'enemy');
sM("Deadly Smile"             ,25,230,190,1,.25,'enemy');
sM("Spontaneous Sugarfication",20,230,5000,1,.25,'enemy');
} else if (string_count('reginald',string_lower(argument0))>0) {
_vp=35; _bp=2; //30,2,4,6,6,9
_power=4; _guard=5; _speed=5; _brain=8;
_gold=123; _exp=153;
sM("Summon: Bee Swarm"   ,33,50,1,0,.25,'enemy');
sM("Chromatic Orb lvl19" ,33,100,10,0,.1,'enemy');
sM("Greater Earth Spire" ,34,200,200,0,.5,'enemy');
//sM("Eat Sandwich"        ,25,230,5000,1,.25,'enemy');
} else if (string_count('vinceborg 2051',string_lower(argument0))>0) {
_vp=120;_bp=0; //80, 0
_power=4; _guard=3; _speed=3.3; _brain=3;
_gold=173; _exp=191;
sM("Laser"         ,20,200,30,1,.1,'enemy');
sM("Refractor Beam",15,200,15,0,.5,'enemy');
sM("Recharge"      ,10,100,50,0,.5,'enemy');
sM("Short Circuit" ,15,200,10,0,.5,'enemy');
sM("Proximity Pass",15,200,150,1,.1,'enemy');
sM("Binary Shower" ,99,100,50,0,.5,'enemy');
} else if (string_count('jordan',string_lower(argument0))>0) {
_vp=88;_bp=5; //65
_power=3; _guard=2; _speed=3; _brain=1.5;
_gold=76; _exp=60;
sM("Gun Shot"          ,20,100,80,1,.1,'enemy');
sM("H-H-Head Shot"     ,20,50,250,1,.5,'enemy');
sM("Swift Bolt Plus"   ,15,200,200,0,.5,'enemy');
sM("Defy Clispaeth"    ,15,100,50,0,.5,'enemy');
sM("Hurricane Bullets" ,30,100,45,0,.5,'enemy');
} else if (string_count('shadow barkley',string_lower(argument0))>0) {
_vp=112; _bp=2; //90, 2
_power=3; _guard=2.5; _speed=4; _brain=3;
_gold=0; _exp=0;
sM("Plague Needler"         ,20,100,50,0,.3,'enemy');
sM("Shadow Lightning"       ,20,100,100,0,.5,'enemy');
sM("Night Regeneration"     ,20,100,100,0,.1,'enemy');
sM("Dark Vortex"            ,20,230,280,0,.2,'enemy');
sM("Verboten Jam"           ,20,230,4200,0,.1,'enemy');
} else if (string_count('t-rex barkley',string_lower(argument0))>0) {
_vp=230; _bp=2; //160
_power=4; _guard=3; _speed=4; _brain=3;
_gold=0; _exp=0;
sM("Dinosaur Spit"       ,20,100,75,1,.1,'enemy');
sM("Tail Whip"           ,20,100,130,1,.1,'enemy');
sM("Chomp Chomp, Yum Yum",20,80,100,1,.1,'enemy');
sM("Battle Roar"         ,10,230,190,1,.25,'enemy');
sM("Flamehell"           ,10,230,200,0,.25,'enemy');
sM("Doomfire Death"      ,20,230,999,0,.25,'enemy');
} else if (string_count('ghastly darklord',string_lower(argument0))>0) {
_vp=120; _bp=2;
_power=4; _guard=4; _speed=4; _brain=4;
_gold=200; _exp=200;
sM("Mystic Eye Beam"   ,20,100,40,1,.1,'enemy');
sM("Soul Consume"      ,20,100,100,1,.1,'enemy');
sM("Tongue"            ,20,80,100,1,.1,'enemy');
sM("Headbash"          ,20,230,190,1,.25,'enemy');
sM("Blackout"          ,20,230,190,1,.25,'enemy');
}
///////////////////////////////////////////////////////////////////
/////////////////////////////////ARENA/////////////////////////////
if (string_count('hell orc',string_lower(argument0))>0) {
_vp=10; _bp=0;
_power=2; _guard=3.5; _speed=3; _brain=2;
_gold=20; _exp=20;
sM("Tackle",100,100,1,1,.1,'enemy');
} else if (string_count('doomhell skele',string_lower(argument0))>0) {
_vp=13; _bp=0;
_power=2; _guard=3.5; _speed=3.5; _brain=0;
_gold=20; _exp=20;
sM("Dancetime",100,100,140,1,.1,'enemy');
} else if (string_count('blood ghoul',string_lower(argument0))>0) {
_vp=16; _bp=0;
_power=3; _guard=3.5; _speed=3; _brain=2;
_gold=20; _exp=20;
sM("Ghoulish Jump",100,100,100,1,.1,'enemy');
} else if (string_count('delmon master',string_lower(argument0))>0) {
_vp=60; _bp=0;
_power=2; _guard=4; _speed=1; _brain=2;
_gold=20; _exp=20;
sM("Flamesplosion",100,100,140,1,.1,'self');
} else if (string_count('kevin garnett',string_lower(argument0))>0) {
_vp=80; _bp=2;
_power=3; _guard=4.2; _speed=2.5; _brain=2.8;
_gold=20; _exp=20;
sM("Pump Fake"         ,15,0,100,1,.1,'enemy');
sM("3-Pointer"         ,40,100,100,1,.1,'enemy');
sM("Dipsy Doo Dunkeroo",25,75,150,1,.1,'enemy');
sM("Dojo Kick"         ,20,200,200,0,.25,'enemy');
}
//////////////////////////////BALTHIOS TRIAL/////////////////////////////
if (string_count('greek warrior',string_lower(argument0))>0) {
_vp=20; _bp=0;
_power=2.5; _guard=.1; _speed=4; _brain=7;
_gold=10; _exp=1;
sM("Rebel Yell",50,100,140,1,.1,'enemy');
sM("Shoulder Butt",50,100,100,1,.1,'enemy');
} else if (string_count('adept soldier',string_lower(argument0))>0) {
_vp=50; _bp=0;
_power=3.3; _guard=4; _speed=3; _brain=2;
_gold=10; _exp=1;
sM("Dual Wield",50,150,10,1,.1,'enemy');
sM("Mega Poke" ,50,200,150,1,.1,'enemy');
} else if (string_count('android officer',string_lower(argument0))>0) {
_vp=25; _bp=0;
_power=3; _guard=1.1; _speed=2.5; _brain=4;
_gold=10; _exp=1;
sM("Ray Scanner",50,70,1,1,.1,'enemy');
sM("Shock Buster",50,200,250,0,.25,'enemy');
}
///////////////////////////////////////////////////////multiple by level
_vp=_vp*argument1;
_bp=_bp*argument1;
_power=_power*argument1;
_guard=_guard*argument1;
_speed=_speed*argument1;
_brain=_brain*argument1;
_exp=_exp*argument1;
_gold=_gold*argument1;
//random by 10%
var ran;
ran=.80+random(.10); //minus 10% used to be 90, 80+.20
ra2=.90+random(.20);
_vp=floor(_vp*ran);
_bp=floor(_bp*ran);
_power=floor(_power*ran);
_guard=floor(_guard*ran);
_speed=floor(_speed*ran);
_brain=floor(_brain*ran);
_exp=floor(_exp/ra2); //round these normally
_gold=floor(_gold/ra2);
_gold=floor(_gold/5); //was /5 then /3 too much
_exp=floor(_exp);
//Set top vars
_rvp=_vp;
_rbp=_bp;
_rpower=_power;
_rguard=_guard;
_rspeed=_speed;
_rbrain=_brain;