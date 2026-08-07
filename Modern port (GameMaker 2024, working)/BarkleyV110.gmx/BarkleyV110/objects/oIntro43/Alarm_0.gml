global.nofollow=0;
sFollow("delete",oFollower2);
sFollow("update");
with (oBarkley) {
sprt=sCyberdwarf;
if (global.victorian=0) name="Cyber Dwarf";
else name="Gear Dwarf";
face=6;
}
oBarkley.t=1;
sCinema(oBarkley,"wait",1);
repeat (12) sCinema(oBarkley,"move","right",4);
repeat (2) sCinema(oBarkley,"move","up",4);
sCinema(oBarkley,"wait",1.5);
sCinema(oBarkley,"dialog","Hoopz, get in the escape pod!",1);
sCinema(oFollower3,"dialog","But what about dad and Mr. James?",1);
sCinema(oBarkley,"dialog","They'll... they'll be okay.",1);
sCinema(oFollower3,"dialog","Are you sure?",1);
sCinema(oBarkley,"dialog","I... yes, I'm sure. Come, Hoopz.",1);
sCinema(oBarkley,"effect","fadein",3);
global.roz=RomNecronFinal;
