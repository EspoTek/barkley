//Arg0 is player number, arg1 is level to do
//return skills
var ftr;
ftr=1;
if (global.char_name[argument0]="Charles Barkley") {
 global.char_hp[argument0]+=floor(38*ftr);
 global.char_zp[argument0]+=floor(3*ftr);
 global.char_chp[argument0]+=floor(38*ftr);
 global.char_czp[argument0]+=floor(3*ftr);
 global.char_attack[argument0]+=floor(6*ftr);
 global.char_defense[argument0]+=floor(3*ftr);
 global.char_footwork[argument0]+=3.3; //floor(3*ftr);
 global.char_zauberacity[argument0]+=floor(3*ftr);
 if (argument1=2) return("Showboat Jam");
 if (argument1=4) return("Vampslam");
}
if (global.char_name[argument0]="Ultimate Hellbane" || global.char_name[argument0]="Balthios") {
 global.char_hp[argument0]+=floor(29*ftr);
 global.char_zp[argument0]+=floor(4*ftr);
 global.char_chp[argument0]+=floor(29*ftr);
 global.char_czp[argument0]+=floor(4*ftr);
 global.char_attack[argument0]+=floor(2*ftr); //was 1
 global.char_defense[argument0]+=floor(2*ftr);
 global.char_footwork[argument0]+=floor(4*ftr);
 global.char_zauberacity[argument0]+=floor(5*ftr);
 if (argument1=1) return("Ice Zauber");
 if (argument1=2) return("Water Zauber");
 if (argument1=3) return("Wind Zauber");
 if (argument1=4) return("Thunder Zauber");
 if (argument1=5) return("Muscle Zauber");
}
if (global.char_name[argument0]="Hoopz") {
 global.char_hp[argument0]+=floor(22*ftr);
 global.char_zp[argument0]+=floor(2*ftr);
 global.char_chp[argument0]+=floor(22*ftr);
 global.char_czp[argument0]+=floor(2*ftr);
 global.char_attack[argument0]+=floor(4*ftr);
 global.char_defense[argument0]+=floor(3*ftr);
 global.char_footwork[argument0]+=floor(5*ftr);
 global.char_zauberacity[argument0]+=floor(3*ftr);
 if (argument1=4) return("Bulletdance");
 if (argument1=5) return("Status Shot");
 if (argument1=6) return("TrickGun Assualt");
}
if (global.char_name[argument0]="Cyberdwarf") {
 global.char_hp[argument0]+=floor(45*ftr);
 global.char_zp[argument0]+=floor(3*ftr);
 global.char_chp[argument0]+=floor(45*ftr);
 global.char_czp[argument0]+=floor(3*ftr);
 global.char_attack[argument0]+=floor(4*ftr);
 global.char_defense[argument0]+=floor(4*ftr);
 global.char_footwork[argument0]+=2.5; //floor(2*ftr);
 global.char_zauberacity[argument0]+=floor(2*ftr);
 if (argument1=4) return("Dwarf Knowledge");
 if (argument1=5) return("Glaucoma Prayer");
 if (argument1=6) return("Dwarf Caress");
}
if (global.char_name[argument0]="Vinceborg") {
 global.char_hp[argument0]+=floor(47*ftr);
 global.char_zp[argument0]+=floor(3*ftr);
 global.char_chp[argument0]+=floor(47*ftr);
 global.char_czp[argument0]+=floor(3*ftr);
 global.char_attack[argument0]+=floor(5*ftr);
 global.char_defense[argument0]+=floor(3*ftr);
 global.char_footwork[argument0]+=floor(3*ftr);
 global.char_zauberacity[argument0]+=floor(2*ftr);
}
return("");