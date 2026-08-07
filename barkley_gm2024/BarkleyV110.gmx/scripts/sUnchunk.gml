with (oBarkley) {
t=-1;
xa=0; ya=-16;
if (place_meeting(x+xa,y+ya,oWall)=0 && place_meeting(x+xa,y+ya,oExitPar)=0 && (x+4+xa>0 && x+4+xa<room_width && y+ya>0 && y+ya<room_height)) { t=0; exit; }
xa=16; ya=0;
if (place_meeting(x+xa,y+ya,oWall)=0 && place_meeting(x+xa,y+ya,oExitPar)=0 && (x+4+xa>0 && x+4+xa<room_width && y+ya>0 && y+ya<room_height)) { t=1; exit; }
xa=0; ya=17;
if (place_meeting(x+xa,y+ya,oWall)=0 && place_meeting(x+xa,y+ya,oExitPar)=0 && (x+4+xa>0 && x+4+xa<room_width && y+ya>0 && y+ya<room_height)) { t=2; exit; }
t=3;
}