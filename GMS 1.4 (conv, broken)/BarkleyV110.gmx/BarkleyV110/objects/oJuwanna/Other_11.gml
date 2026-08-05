global.dialog=1;
if (sOvar(oJuwanna,-1)=2) {
sCinema(oJuwanna,"dialog","Charles, I believe in you. Don't ever forget that.",1);
} else if (sOvar(oSign1,-1)=1) {
sOvar(oSign1,1.3);
sCinema(oJuwanna,"dialog","So you accepted the hunter quest, Barkley? I thought you would. The Ghost Dad's been terrorizing Proto Neo New York for years now. We've been living in its wake and at its mercy for too long and it's time something is done about it. Problem is, we're just not cut out for fighting here, so that's why we hired y-",1);
sCinema(oBarkley,"code",cine_0400);
sCinema(oBarkley,"wait",2.5);
sCinema(oBarkley,"jump","start");
sCinema(oJuwanna,"jump","start");
sCinema(oBarkley,"jump","end");
sCinema(oJuwanna,"jump","end");
sCinema(oBarkley,"code",cine_0401);
sCinema(oBarkley,"wait",.5);
sCinema(oBarkley,"code",cine_0402);
sCinema(oBarkley,"dialog","Shit, it sounds like he's back.",1);
sCinema(oJuwanna,"dialog","That's your cue, Barkley. Oh and be careful out there... for me.",1);
sCinema(oBarkley,"dialog","Juwanna, you know my heart belongs to Maureen even in death.",1);
sCinema(oJuwanna,"face","left");
sCinema(oBarkley,"wait",1.5);
sCinema(oJuwanna,"dialog","I... I know. She was a lucky woman Charles... G-good luck out there! I know you can do it!",1);
sCinema(oBarkley,"move","right");
sCinema(oJuwanna,"face","right");
sCinema(oJuwanna,"jump","start");
sCinema(oJuwanna,"jump","end");
sCinema(oBarkley,"dialog","I'll do what I can, Juwanna...",1);
repeat (8) sCinema(oBarkley,"move","right",6);
repeat (4) sCinema(oBarkley,"move","down",6);
sCinema(oBarkley,"effect","fadein",3);
global.roz=RomProtoStreet;
} else if (sOvar(oSign1,-1)=2) {
sCinema(oJuwanna,"dialog","I... I just wanted to thank you one more time, Charles.",1);
sCinema(oBarkley,"dialog","Yeah, it was nothing... I really need to get going now.",1);
sCinema(oJuwanna,"dialog","O-okay... good luck.",1);
sCinema(oBarkley,"dialog","Thanks...",1);
} else {
//sOvar(object_index,1);
sCinema(oJuwanna,"dialog","Have you checked the town hunt quest board yet, Barkley?",1);
sCinema(oBarkley,"dialog","No, not yet.",1);
sCinema(oJuwanna,"dialog","Who knows, you may find more lucrative hunts on it than just the Ghost Dad.",1);
sCinema(oBarkley,"dialog","We'll see, Juwanna. We'll see.",1);
}
