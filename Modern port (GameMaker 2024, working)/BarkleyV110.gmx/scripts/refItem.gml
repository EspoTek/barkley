//Arg0 is tem name, spits back details UPDATED
global.tClass="";
global.tName=argument0;
global.tDesc="";
global.tValue=0;
global.tEffect="";
global.tEvalue=0;
global.tEpercent=0;
global.tAir=0;
global.tGuard=0;
global.tFoot=0;
global.tZaubacity=0;
global.tVp=0;
global.tZp=0;
global.tBattle=0;
global.tCansell=1;
//Nothing
global.tClass="Nothing";
if (argument0="Nothing") {
global.tDesc="Nothing.";
}
if (global.tDesc!='') exit;
////////////////////////////////////////////////////////////////Items
global.tClass="Item";
if (argument0="Ivory's Bromide") {
global.tDesc="A bromide of Ivory Latta.";
global.tValue=2;
global.tEffect="Picture";
global.tCansell=0;
} else if (argument0="Battlers Tome 1") {
global.tDesc="Battler's Tome - Battle Fundaments.";
global.tValue=2;
global.tEffect="Picture";
global.tCansell=0;
} else if (argument0="Battlers Tome 2") {
global.tDesc="Battler's Tome - Status Conditions.";
global.tValue=2;
global.tEffect="Picture";
global.tCansell=0;
} else if (argument0="Battlers Tome 3") {
global.tDesc="Battler's Tome - Battlin' Tactics.";
global.tValue=2;
global.tEffect="Picture";
global.tCansell=0;
} else if (argument0="Shrekmono Piccie") {
global.tDesc="A photograph of the legendary kimono.";
global.tValue=2;
global.tEffect="Picture";
global.tCansell=0;
} else if (argument0="Gun's Sticker") {
global.tDesc="I Love Gun's bumper sticker. Labeled 1 of 1, in crayon.";
global.tValue=2;
global.tEffect="Picture";
global.tCansell=0;
} else if (argument0="Dimension Whistle") {
global.tDesc="Toot to teleport to the B-Ball Dimension. One use.";
global.tValue=500;
global.tEffect="Warp Device";
global.tCansell=0;
} else if (argument0="Genie Lamp") {
global.tDesc="Shaped less like a lamp, and more like a boom box...";
global.tValue=500;
global.tEffect="Magic Lamp";
global.tCansell=0;
} else if (argument0="Golden Potato") {
global.tDesc="Summons a legendary potato in battle...";
global.tValue=9999;
global.tEffect="Summon Hiratio";
global.tCansell=0;
global.tBattle=1;
} else if (argument0="Gatorade Gum") {
global.tDesc="Turns rock solid upon air exposure.";
global.tValue=250;
global.tEffect="Single, Permanent VP +25";
} else if (argument0="Mysterious Potion") {
global.tDesc='It says "Game Fuel".';
global.tValue=500;
global.tEffect="Single, Permanent VP +50";
} else if (argument0="Ecto Cooler?") { /////////////real items start here
global.tDesc="BEST IF SOLD BY: 12/31/200X";
global.tValue=35;
global.tEffect="Single, BP +%20, VP +%20";
global.tBattle=1;
} else if (argument0="Protein Paste") {
global.tDesc="Now with 20% more protein.";
global.tValue=23;
global.tEffect="Single, VP +%33";
global.tBattle=1;
} else if (argument0="Ecto Cooler") {
global.tDesc="Apply liberally to wounds.";
global.tValue=66;
global.tEffect="Single, VP +%66";
global.tBattle=1;
} else if (argument0="BBall Juice") {
global.tDesc="Used by active ballers on the go.";
global.tValue=125;
global.tEffect="Single, VP +%99";
global.tBattle=1;
} else if (argument0="BBall Shard") {
global.tDesc="The shard of a mystic b-ball.";
global.tValue=90;
global.tEffect="Single, BP +%50";
global.tBattle=1;
} else if (argument0="BBall Tear") {
global.tDesc="The tear of an ancient baller.";
global.tValue=220;
global.tEffect="Single, BP +%100";
global.tBattle=1;
} else if (argument0="Steroids") {
global.tDesc="When the going gets tough...";
global.tValue=100;
global.tEffect="Single, Revive, VP +%50";
global.tBattle=1;
} else if (argument0="Chicken Dew") {
global.tDesc="The dew of a chicken fry.";
global.tValue=179;
global.tEffect="Single, Revive, VP +%100";
global.tBattle=1;
} else if (argument0="Chicken Fry") {
global.tDesc="One nation under chicken fry.";
global.tValue=699; //499
global.tEffect="All, Revive, VP +%100, BP +%100, Cure All";
global.tBattle=1;
} else if (argument0="Tobacco") {
global.tDesc="Cures all status ailments and negative stat mods.";
global.tValue=100;
global.tEffect="Single, Cure All";
global.tBattle=1;
} else if (argument0="Insulin") {
global.tDesc="Removes diabeetus status.";
global.tValue=20;
global.tEffect="Single, Cure Diabetes";
global.tBattle=1;
} else if (argument0="Chup") {
global.tDesc="A homegrown chup. Helps with the glaucomas.";
global.tValue=15;
global.tEffect="Single, Cure Glaucoma";
global.tBattle=1;
} else if (argument0="Fstone Mvitamin") {
global.tDesc='Enriched with many minerals. Labelled "i am baney".';
global.tValue=25;
global.tEffect="Single, Cure Parkinsons";
global.tBattle=1;
} else if (argument0="Alcohol") {
global.tDesc='Helps get the edge off.';
global.tValue=10;
global.tEffect="Single, Cure Aspergers";
global.tBattle=1;
}

///////////////////////////////////////////////////////////Weapons

///////////
//BARKLEY//
///////////
if (global.tDesc!='') exit;
global.tClass="BBall";
if (argument0="Soccerball") {
global.tDesc="It's a FIFA.";
global.tValue=40;
global.tAir=5;
} else if (argument0="Volleyball") {
global.tDesc="A standard volleyball.";
global.tValue=100;
global.tAir=9;
} else if (argument0="B-ball") {
global.tDesc="Basketballs are contraband - don't get caught.";
global.tValue=250;
global.tAir=18;
} else if (argument0="Spiked B-ball") {
global.tDesc="This ancient b-ball is covered in spikes.";
global.tValue=475;
global.tAir=24;
} else if (argument0="Mystic B-ball") {
global.tDesc="Ancient magics flow through this b-ball.";
global.tValue=700;
global.tAir=32;
} else if (argument0="Hell B-ball") {
global.tDesc="Nobody knows the past of this demonic b-ball...";
global.tValue=900;
global.tAir=50;
global.tCansell=0;
} else if (argument0="H/S B-ball") {
global.tDesc="Dual wield the Hell B-ball and Shimmerglobe for 2 attacks.";
global.tValue=00;
global.tAir=40;
global.tCansell=0;
}
if (global.tDesc!='') global.tAir=global.tAir*2; //double this weapon
if (global.tDesc!='') exit;

///////////
//BALTHIOS//
///////////
global.tClass="Zauber";
if (argument0="Plain Zauber") {
global.tDesc="A plain old zauber.";
global.tValue=12;//23;
global.tAir=2;
global.tZaubacity=1;
} else if (argument0="Fire Zauber") {
global.tDesc="This zauber is warm to the touch.";
global.tValue=47;//78;
global.tAir=6;
global.tZaubacity=3;
} else if (argument0="Ice Zauber") {
global.tDesc="A mystic aura envelopes this zauber.";
global.tValue=78;//167;
global.tAir=10;
global.tZaubacity=5;
} else if (argument0="Thunder Zauber") {
global.tDesc='Said to be the source of "Mystic" Johnson'+"'"+'s power.';
global.tValue=154;//303;
global.tAir=16;
global.tZaubacity=8;
} else if (argument0="Time Zauber") {
global.tDesc="Takes advantage of the space-time continuum.";
global.tValue=201;//387;
global.tAir=22;
global.tZaubacity=11;
} else if (argument0="Hell Zauber") {
global.tDesc="A zauber forged in the infernal fires of Hell.";
global.tValue=246;//490;
global.tAir=28;
global.tZaubacity=14;
} else if (argument0="Bloody Zauber") {
global.tDesc="An evil aura eminates from this ancient zauber...";
global.tValue=333;//665;
global.tAir=36;
global.tZaubacity=18;
} else if (argument0="Snail Zauber") {
global.tDesc="This zauber is imbued with the power of snails.";
global.tValue=999;
global.tAir=30; 
global.tZaubacity=15;
global.tGuard=20;
}
if (global.tDesc!='') global.tAir=global.tAir*2; //double this weapon
if (global.tDesc!='') exit;

///////////
//CYBERDWARF//
///////////
global.tClass="Muscle";
if (argument0="Rusty Muscle") {
global.tDesc="This muscle could break at any moment.";
global.tValue=60;
global.tAir=3;
} else if (argument0="Dwarf Wisdom") {
global.tDesc="The wisdom of 1000 dwarfs.";
global.tValue=109;
global.tAir=5;
} else if (argument0="Dwarf Pride") {
global.tDesc="An ancient muscle forged of dwarf gold.";
global.tValue=208;
global.tAir=9;
} else if (argument0="Dwarf Warhammer") {
global.tDesc="The technology used to make this has been lost...";
global.tValue=411;
global.tAir=16;
} else if (argument0="Dwarfbane") {
global.tDesc="This legendary muscle is 1000 years old.";
global.tValue=567;
global.tAir=20;
global.tGuard=5;
} else if (argument0="Dwarfstear") {
global.tDesc="Made from the solidified tears of the final dwarf.";
global.tValue=788;
global.tAir=28;
global.tGuard=10;
} else if (argument0="Dwarf Muscle") {
global.tDesc="Only the wisest dwarfs can use this ancient muscle";
global.tValue=1499;
global.tAir=38;
global.tGuard=15;
}
if (global.tDesc!='') global.tAir=floor(global.tAir*2.5); //double this weapon
if (global.tDesc!='') exit;

/////////
//HOOPZ//
////////
global.tClass="Guns";
if (argument0="ZX Zaubertech1") {
global.tDesc="One of the cheapest gun's on the market.";
global.tValue=32;
global.tAir=4;
} else if (argument0="ZX ZaubertechZ") {
global.tDesc="An upgrade for the popular Zaubertech model.";
global.tValue=78;
global.tAir=9;
} else if (argument0="Mithril'braster") {
global.tDesc="A gun made of mithril. Forged by a dwarf.";
global.tValue=176;
global.tAir=14;
} else if (argument0="Battlestech Gun") {
global.tDesc="Made by the high-tech gun's company Battlestech.";
global.tValue=287;
global.tAir=19;
} else if (argument0="ZX ModelX571X") {
global.tDesc="High tech, usable only by the greatest Gun'slords.";
global.tValue=343;
global.tAir=22;
} else if (argument0="A4431063XZZ 305") {
global.tDesc="Nobody knows where this mysterious gun came from...";
global.tValue=458;
global.tAir=30;
} else if (argument0="Egyptian Gun") {
global.tDesc="A deadly aura surrounds this ancient Egyptian gun.";
global.tValue=733;
global.tAir=39;
} else if (argument0="F.I.N.A.L. G.U.N.") {
global.tDesc="Some say this gun was made by the devil himself...";
global.tValue=999;
global.tAir=40;
global.tFoot=5;
global.tZaubacity=10;
global.tCansell=0;
}
if (global.tDesc!='') global.tAir=global.tAir*2; //double this weapon
if (global.tDesc!='') exit;

////////////////////////////////////////////////////////////ARMOUR
global.tClass="Threads";
if (argument0="Tshirt" || argument0="Rags") {
global.tDesc="Can't keep you warm in the post-cyberpocalypse.";
global.tValue=20;
global.tGuard=3;
} else if (argument0="Jersey") {
global.tDesc="This jersey is contraband.";
global.tValue=55;
global.tGuard=9;
} else if (argument0="Referee Uniform") {
global.tDesc="Not very stylish, but commands authority.";
global.tValue=175;
global.tGuard=18;
} else if (argument0="Mithril Jersey") {
global.tDesc="Made of the finest Dwarf mithril.";
global.tValue=440;
global.tGuard=30;
} else if (argument0="Shrekmono") {
global.tDesc="A kimono with a picture of Shrek on it.";
global.tValue=750;
global.tGuard=40;
}
if (global.tDesc!='') exit;
global.tClass="Coat";
if (argument0="Robe") {
global.tDesc="Adds +1 to mysteriousness.";
global.tValue=5*3;
global.tGuard=2;
} else if (argument0="Jacket") {
global.tDesc="The Square-Enix-Goya logo is on the back.";
global.tValue=14*3;
global.tGuard=5;
} else if (argument0="Trenchcoat") {
global.tDesc="A post-cyberpocalyptic standard.";
global.tValue=52*3;
global.tGuard=13;
} else if (argument0="Zaubermancer Garb") {
global.tDesc="The robes of an ancient zaubermancer...";
global.tValue=79*3;
global.tGuard=20;
} else if (argument0="Falcon Jodhpurs") {
global.tDesc="Jodhpurs imbued with power of limitless falcons.";
global.tValue=450;
global.tGuard=30;
}
if (global.tDesc!='') exit;
global.tClass="Techs'gear";
if (argument0="Cyber-Tunic") {
global.tDesc="CAUTION: For Cyberdwarf use only.";
global.tValue=97*3;
global.tGuard=16;
} else if (argument0="Tek-Skeleton") {
global.tDesc="Relatively strong chain armor.";
global.tValue=169*3;
global.tGuard=31;
} else if (argument0="Tupperware Armor") {
global.tDesc="Made of the sturdiest tupperware on the planet.";
global.tValue=999;
global.tGuard=45;
}
////////////////////////////////////////////////////////////BLING
if (global.tDesc!='') exit;
///////////////////////////////////SPEED
global.tClass="Bling";
if (argument0="Bapes") {
global.tDesc="The hottest kicks in the post-cyberpocalypse";
global.tValue=22;
global.tFoot=3;
} else if (argument0="Nikes") {
global.tDesc="Vintage pre-purge Air Barkleys.";
global.tValue=370;
global.tFoot=14;
} else if (argument0="Pumps") {
global.tDesc="Variable air pumping allows for a smooth fit.";
global.tValue=199;
global.tFoot=8;
} 
if (global.tDesc!='') exit;
///////////////////////////////////BRAIN
if (argument0="Glasses" || argument0="Sunglasses") {
global.tDesc="It's always dark in the post-cyberpocalypse.";
global.tValue=18;
global.tZaubacity=2;
} else if (argument0="Sweatband") {
global.tDesc="Has an excellent sweat absorption ratio.";
global.tValue=89;
global.tZaubacity=6;
} else if (argument0="Goggles") {
global.tDesc="Protects your peepers in any dangerous situation.";
global.tValue=168;
global.tZaubacity=14;
} else if (argument0="Mithril Sweatband") {
global.tDesc="A sweatband made from the magical silver mithril.";
global.tValue=310;
global.tZaubacity=22;
}
if (global.tDesc!='') exit;
///////////////////////////////////DEFENSE
if (argument0="Backwards Cap") {
global.tDesc="Provides more protection while backwards.";
global.tValue=15;
global.tGuard=3;
} else if (argument0="Ace Bandage") {
global.tDesc="Provides compression; ice it when you get home.";
global.tValue=75;
global.tGuard=7;
} else if (argument0="Athletic Supporter") {
global.tDesc="Provides overall support - for your athletics.";
global.tValue=160;
global.tGuard=13;
} else if (argument0="Facemask") {
global.tDesc="Clear-plastic shield, just like Rip used to wear.";
global.tValue=255;
global.tGuard=20;
}
if (global.tDesc!='') exit;
///////////////////////////////////ATTACK
if (argument0="Wrist Brace") {
global.tDesc="Much-needed support for a b-baller's sore wrists.";
global.tValue=70;
global.tAir=6;
} else if (argument0="Ultimate Wristband") {
global.tDesc="50/50 Goretex(TM)-Neoprene(TM) blend.";
global.tValue=165;
global.tAir=12;
} else if (argument0="Cyber-Gauntlet") {
global.tDesc="Has red digital readout; also protects your hands.";
global.tValue=270;
global.tAir=19;
}
if (global.tDesc!='') exit;
///////////////////////////////////MISC
if (argument0="Maureen's Ring") {
global.tDesc="Maureen's wedding ring...";
global.tValue=10;
global.tFoot=1;
}
///////////////////////////////////////////////////////////KEY ITEMS
if (global.tDesc!='') exit;
global.tCansell=0;
global.tClass="Key Item";
global.tEffect="Key Item";
if (argument0="Femur") {
global.tDesc="This is Dikembe Motombo's femur.";
} else if (argument0="Poem") {
global.tDesc='It is titled "Sorrow Heart / Entrapped Skin."';
} else if (argument0="Turkey Feather") {
global.tDesc="Zalatar's precious turkey feather.";
} else if (argument0="Red Keycard") {
global.tDesc="A crimson computer card.";
} else if (argument0="Blue Keycard") {
global.tDesc="An aquamarine computer card.";
} else if (argument0="Green Keycard") {
global.tDesc="A chartreuse computer card.";
} else if (argument0="Prototype B-ball") {
global.tDesc="It needs to be recharged with jamicite.";
} else if (argument0="Pipe") {
global.tDesc="Something tells me I could use this later...";
} else if (argument0="Triangle Rock") {
global.tDesc="Oddly shaped, but could be used for creating leverage.";
} else if (argument0="Screwdriver") {
global.tDesc="A flathead screwdriver. Looks like it's new.";
} else if (argument0="Orb Sceptre") {
global.tDesc="Made from palladium, this sceptre functions as a key.";
} else if (argument0="Immaculate Rod") {
global.tDesc="The second key for Liberty Tower.";
} else if (argument0="Sugar Counter") {
global.tDesc="Measures sugar particles in the immediate area.";
} else if (argument0="Desk Key") {
global.tDesc="I found this key in a desk.";
} else if (argument0="Poleshaft") {
global.tDesc="Looks like junk, I can't do anything with this.";
}