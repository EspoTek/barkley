event_inherited();
facet=3;
option[2]="Combo";
option[1]="Dwarfrage";
option[0]="Cover";
optiond[0]="Protect allies with a %33 guard bonus.";
optiond[1]="Summon rage from within to cast magicks.";
optiond[2]="Pound enemies into oblivion with a combo.";
image_speed=0.2;
footy=18;
enemy=0;
name="Cyberdwarf";
hurts=sBCyberHurt;
deads=sBCyberDead;
defend=sBCyberDefend;
runs=sBCyberWalk;
item=sBCyberItem;
cele=sBCyberCelebrate;
_vp=600;
_bp=600;
_power=20;
_speed=30;
_guard=20;
_brain=40;
//////////
stage=0; //for meter object
wdone=0;
walk=-999;
wspd=6; //was 5 //3
doing=-1;
rou=0;
event_user(14);
prefin=-1;
onr=0;
instance_create(8,8,oBComboMeter);
//Info
infoh[0]="Quick Reference:";
//One # too many after "Finisher." in the original: every other character's
//Quick Reference is four rows tall (Vinceborg pads one content line with ###,
//Barkley/Hoopz/Balthios use three lines and no padding). Cyberdwarf has two
//content lines, so ### left a stray blank row in the middle of the box.
info[0]="Action / Cancel / Start - Normal attacks.#Left / Down / Right + Any Key - Finisher.##Press left or right for attack information.";
info[1]="1";
infoh[1]="Regular Attacks";
info[2]="1";
infoh[2]="Finishers";
info[3]="1";
infoh[3]="Executing Finishers";
infoh[4]="Combo Bar";
info[4]="The bar fills over time and when you strike. There are two attacks, regular and finishers. Running out of time or using a finisher will end the combo.";
//infoh[2]="Regular Attacks";
//info[2]="Action - Jab, low damage.#Cancel - Kick, medium damage.#Start - Punch, high damage.";
//infoh[3]="Finishers";
//info[3]="Left + Action - Push, lower brain.#Down + Action - Toss, lower attack.#Right + Action - Suplex, lower defense.";
infoh[5]="Combo Tactics";
info[5]="To get maximum damage, do not perform a finisher and alternate attacks. Use jabs on low guard foes, and punches on high guard foes for best results.";
info[6]="";
//Was 4, but pages run 0-5 (infoh[5]="Combo Tactics"). oBattleMenu pages right
//until info[inf]="" and left until inf<0 then jumps to infomax, so the wrap was
//asymmetric: paging left from page 0 landed on "Combo Bar" and skipped "Combo
//Tactics". Original 2008 off-by-one -- the author converted three text pages
//into sprite pages (the commented-out infoh[2]/infoh[3] above) and never
//re-counted. Barkley, the other six-page character, correctly has 5.
infomax=5;
