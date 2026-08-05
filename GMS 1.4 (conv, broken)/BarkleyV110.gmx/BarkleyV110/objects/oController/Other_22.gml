//MIRROR THIS WITH EVENT 14 if you change anything
if (room=RomCuchHoop0 || room=RomCuchBarkley0 || room=RomCuchCyber0 || room=RomCuchBalthios0 || room=RomCuchCorridor) {
with (oStartmenu) instance_destroy();
sCinema(oBarkley,"dialog","I shouldn't use this now...",1);
} else {
with (oStartmenu) instance_destroy();
kaz=instance_create(__view_get( e__VW.XView, 0 )+160,__view_get( e__VW.YView, 0 )+80,oDummy);
kaz.image_alpha=0.75;
kaz.depth=-9999;
kaz.visible=0;
kaz.sprite_index=sKazaam;
sCinema(oBarkley,"dialog","Let's rub the genie lamp and see what happens...",1);
sCinema(oBarkley,"code",cine_0035);
sCinema(oBarkley,"dialog","Kazaam:\\Who dare to wake me? Ain't gonna mame this a mystery. Don't wanna do time on your wish. Watch it, boy! You don't want to dis me! Or I'll dish out my misery. Now. Who's that sorry wanna-be that disturbed my Z's? If you wanna be number one, I'm sorry boy, that's been done! But if you got the itches for a sack of riches don't matter how avaricious, I'm the man that can grant your wishes! Hey, don't turn your butt on me! I'm the man of the ages, straight out of the pages. Hang on! I'm contagious, outrageous, spontaneous! You can't contain this. I am KAZAAM!",0);
sCinema(oFollower2,"dialog","Holy Clispaeth! It's Kazaam.",1);
sCinema(oBarkley,"dialog","Kazaam:\\I am... Kazaam!",0);
sCinema(oFollower0,"dialog","Wow Barkley, I've heard about this Djinni in my tomes. Since we have summoned Kazaam, we are entitled to a wish.",1);
sCinema(oBarkley,"dialog","Kazaam:\\Make your wish and I'm out of your face, back in my lamp and away from this place.",0);
sCinema(oBarkley,"dialog","Ok, I'll wish for...",1);
sCinema(oBarkley,"dialog","What do you wish for?",0,"Power.","Wealth.","Knowledge.");
sCinema(oBarkley,"code",cine_0036);
}
