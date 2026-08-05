//Make spacebar not the key, all gun buttons need to work
//Make mash proof for skills
event_inherited();
facet=1;
option[2]="Brasts";
option[1]="Guns'tech";
option[0]="Evade";
//optiond[0]="Have a %50 chance of evasion for your turn.";
optiond[0]="100% dodge on one attack while evading.";
optiond[1]="Hurt opponents with gun's techniques.";
optiond[2]="Combat foes with a selected gun's attack.";
image_speed=0.2;
footy=36;
enemy=0;
name="Hoopz";
hurts=sBHoopzHurt;
deads=sBHoopzDead;
defend=sBHoopzDefend;
runs=sBHoopzRun;
item=sBHoopzItem;
cele=sBHoopzCelebrate;
_vp=190;
_bp=333;
_power=20;
_speed=11;
_guard=20;
_brain=40;
///Hoops test
slav=(instance_create(x,y,oBDummy));
skillusing=0;
shaft=10;
barrel=16; //16
rot=180;
face=180;
shoot=0;
back=0;
imgz=0; //this is gun was 3
charge=0;
reload=0;
jammed=0;
jamchance=10;
doshot=0;
clipsize=5;
clip=clipsize;
cfail=0; //for prefin when hold and not release
fdf=-999; //beta temp var
//Skils
mov=-999;
event_user(13); //skill
sprite_index=sBHoopzStand;
event_user(14);
prefin=-1; //defines constrains for finishing moves
exec=-1;
//Info
infoh[0]="Quick Reference:";
info[0]="Action Key - Accurate Shot#Cancel Key - Rapid Fire#Start Key - Mega Shot#Press left or right for attack information.";
infoh[1]="Action Key - Accurate Shot";
info[1]="200% base accuracy, medium damage.#Hold and release when the aimer lines up with the target.";
infoh[2]="Cancel Key - Rapid Fire";
info[2]="75% base accuracy, low damage.#Repeatedly press fire to shoot, press left and right to switch targets.";
infoh[3]="Start Key - Mega Shot";
info[3]="50% base accuracy, high damage.#Hold and release when the lines meet to charge; shot will miss on overcharge.";
info[4]="";
infomax=3;
//Skils
skll[2]="Gun's Slay#Press any firing key when the aimers reach the target for maximum accuracy.";
skll[0]="Bulletdance#Press any firing key when the gun appears to shoot at a random enemy.";
skll[1]="Tricky Gun's Assualt#Press any firing key rapidly when mid-air. Press any firing key to line up the Mega Shot when landed.";
skll[3]="Status Shot#Line up the aimers using any firing key to succeed in hitting the target.";
skll[4]="";
skllmax=3;
