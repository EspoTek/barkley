// Port: oIntro40 is placed in BOTH RomSubway1 and RomNBAJam, and these alarms are
// gated only on the story counter, never on `room` -- so they fire in RomNBAJam,
// which places none of oBalthios/oCyberdwarf/oHoopz/oJuwanna (and RomSubway1 does
// not place object649x). Bare obj.var writes to an absent object are a hard error
// in GameMaker 2024; GM6 ignored them. Same `with` treatment as Alarm_5.
sOvar(object_index,2);
global.nofollow=1;
with (oFollower) x=-999;
with (oBarkley) { visible=0; t=3; }
with (object649x) x-=128;
global.camera=object4x;
room_speed=30;
//do sprt subber for hoopz deal
//object4x.alarm[5]=10;
sA("stopall");
sound_loop(mCheer);
sCinema(oBarkley,"code",cine_0074);
sCinema(oBarkley,"cond",cine_0148);
sCinema(oBarkley,"dialog","It was the first game I ever took you to. There were 2 seconds left on the clock and we were down by a point. I saw Maureen holding you in the stands and I knew I couldn't let you down.");
sCinema(oBarkley,"wait",1);
sCinema(oBarkley,"dialog","That all you got? Come on! If you can't slam with the best then jam with the rest!",1);
sCinema(oBarkley,"dialog","But my confidence was just a facade, in reality I thought you'd grow up thinking I was a chump because I didn't win your first game. I didn't want that to happen.");
//sCinema(oDVitale,'dialog',"Well Tom, with that last jam it puts the Knicks ahead 122-121. With only a few seconds left, it looks like this game is finally over.");
sCinema(oDVitale,"dialog","That last slam-jam puts the Knicks ahead 122-121. With only a few seconds left, it looks like the Suns are going to hang their heads low tonight.",1);
sCinema(oBarkley,"wait",2);
sCinema(oBarkley,"dialog","There was only two seconds left. I didn't have enough time to shoot. I didn't have time to do anything. There was nothing I could do.");
sCinema(oBarkley,"code",cine_0203);
sCinema(oBarkley,"wait",2);
sCinema(oBarkley,"code",cine_0320);
sCinema(oBarkley,"wait",2);
sCinema(oBarkley,"dialog","No.");
sCinema(oBarkley,"code",cine_0321);
sCinema(oBarkley,"wait",2);
sCinema(oBarkley,"dialog","There was something I could do.");
sCinema(oBarkley,"code",cine_0322);
sCinema(oBarkley,"wait",2);
sCinema(oBarkley,"dialog","I closed my eyes and focused my b-ball energy. I had never done this before. Nobody had.");
sCinema(oBarkley,"code",cine_0323);
sCinema(oBarkley,"wait",2);
//sCinema(oDVitale,'dialog',"What the hell is going on out there?! It's like an earthquake or something. The tension in this arena is building like I've never seen it.");
sCinema(oDVitale,"dialog","What the hell is going on out there, baby?! It's like an earthquake out there, the tension in this arena is phenomenal. I've never seen anything like this in a hoops game before!",1);
sCinema(oBarkley,"code",cine_0324);
sCinema(oBarkley,"wait",1);
sCinema(oBarkley,"dialog","This was it. It was now...");
sCinema(oBarkley,"wait",1);
sCinema(oBarkley,"dialog","...or never.");
sCinema(oBarkley,"code",cine_0325);
sCinema(oBarkley,"wait",.5);
sCinema(oBarkley,"dialog","CHAOS DUUUUUUUUUNNK!",1);
sCinema(oBarkley,"code",cine_0326);
sCinema(oBarkley,"cond",cine_0327);
sCinema(oBarkley,"tint",c_black,1);
sCinema(oBarkley,"wait",3);
sCinema(oBarkley,"dialog","They were gone. All of them. Everything. Eviscerated by the Chaos Dunk. My team, my coach, my fans... my wife, my child.");
sCinema(oBarkley,"code",cine_0328);
sCinema(oBarkley,"code",cine_0329);
sCinema(oBarkley,"wait",1);
sCinema(oBarkley,"tint",c_black,0);
sCinema(oBarkley,"wait",1);
sCinema(oBarkley,"move","left");
sCinema(oBarkley,"dialog","But then I saw you...");
repeat (3) sCinema(oBarkley,"move","left");
sCinema(oBarkley,"dialog","...why? Why had you been the only one to survive?");
sCinema(oBarkley,"dialog","Hoopz...",1);
sCinema(oBarkley,"wait",2);
sCinema(oBarkley,"dialog","Hoopz...",1);
sCinema(oBarkley,"effect","fadein",3);
global.roz=RomSubway1;
