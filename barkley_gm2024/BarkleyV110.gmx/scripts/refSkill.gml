//Name
//Target
//MP
//Desc
//Event User
global.c_name=argument0;
//Barkley
if (argument0=="Doubleteam") {
global.c_target="Enemy";
global.c_mp=10;
global.c_desc="Bamboozles the enemy with shots from all angles.";
global.c_event=0;
} else if (argument0=="Showboat Jam") {
global.c_target="Enemy";
global.c_mp=20;
global.c_desc="Gain a bonus to a stat, and deal jam damage to a foe.";
global.c_event=1;
} else if (argument0=="Holy Dunk") {
global.c_target="Enemy";
global.c_mp=35;
global.c_desc="Dekembe Motumbo's secret dunk devistates a foe.";
global.c_event=2;
} else if (argument0=="Vampslam") {
global.c_target="Enemy";
global.c_mp=10;
global.c_desc="Slam an enemy using vamp powers, and regain VP.";
global.c_event=3;
} else if (argument0=="Ghost Muscle") {
global.c_target="Self";
global.c_mp=5;
global.c_desc="Increases power and brain with the muscle of ghosts.";
global.c_event=4;
}
//Balthios
if (argument0=="Ice Zauber") { //2
global.c_target="Enemy";
global.c_mp=20;
global.c_desc="Shatters a fiend into 1,000 pieces using ice powers.";
global.c_event=0;
} else if (argument0=="Wind Zauber") { //4
global.c_target="All Foe";
global.c_mp=25;
global.c_desc="Launches zaubs equal to enemies, then gusts foes away.";
global.c_event=1;
} else if (argument0=="Flame Zauber") { //1
global.c_target="All Foe";
global.c_mp=5;
global.c_desc="Creates a wall of fire to lower enemy attack.";
global.c_event=2;
} else if (argument0=="Water Zauber") { //5
global.c_target="All Foe";
global.c_mp=10;
global.c_desc="Showers status effects onto enemies with water.";
global.c_event=3;
} else if (argument0=="Snail Zauber") { //X
global.c_target="All Foe";
global.c_mp=10;
global.c_desc="50% chance of slowing the enemy to the pace of a snail.";
global.c_event=4;
} else if (argument0=="Thunder Zauber") { //3
global.c_target="Enemy";
global.c_mp=25;
global.c_desc="Zaps one enemy with the power of lightning.";
global.c_event=5;
} else if (argument0=="Muscle Zauber") { //6
global.c_target="Enemy";
global.c_mp=20;
global.c_desc="Lowers several enemy stats by destroying vital muscles.";
global.c_event=6;
}
//Vinceborg
if (argument0=="Refractor Beam") {
global.c_target="All Foe";
global.c_mp=25;
global.c_desc="Does hellacious beam damage.";
global.c_event=0;
}
//Hoopz
if (argument0=="Gun's Slay") {
global.c_target="Enemy";
global.c_mp=10;
global.c_desc="Slays a foe with deadly gun's.";
global.c_event=2;
} else if (argument0=="TrickGun Assualt") {
global.c_target="Enemy";
global.c_mp=30;
global.c_desc="Tricky attack that deals heavy damage to one foe.";
global.c_event=1;
} else if (argument0=="Bulletdance") {
global.c_target="All Foe";
global.c_mp=10;
global.c_desc="Attacks all foes with bullets.";
global.c_event=0;
} else if (argument0=="Status Shot") {
global.c_target="Enemy";
global.c_mp=10;
global.c_desc="Inflicts diabetes on one enemy.";
global.c_event=3;
} 
//Cyberdwarf
if (argument0=="Dwarven Touch") {
global.c_target="Ally";
global.c_mp=10;
global.c_desc="Heals 50% VP and raises a random stat.";
global.c_event=0;
} else if (argument0=="Insulin Shot") {
global.c_target="Ally";
global.c_mp=5;
global.c_desc="Heals diabetes, and makes the target immune to it.";
global.c_event=3;
} else if (argument0=="Dwarf Knowledge") {
global.c_target="Ally";
global.c_mp=15;
global.c_desc="Heals 100% VP and removes negative stat mods.";
global.c_event=2;
} else if (argument0=="Glaucoma Prayer") {
global.c_target="All Ally";
global.c_mp=5;
global.c_desc="Prays glaucoma away for all allies.";
global.c_event=1;
} else if (argument0=="Dwarf Caress") {
global.c_target="All Ally";
global.c_mp=20;
global.c_desc="Restores 66% VP for all allies.";
global.c_event=5;
} else if (argument0=="Chaff Grenade") {
global.c_target="All Foe";
global.c_mp=10;
global.c_desc="Jams enemy radar with deadly chaffs.";
global.c_event=4;
}