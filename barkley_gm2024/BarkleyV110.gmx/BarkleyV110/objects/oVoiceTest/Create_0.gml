// VOICE TEST screen (port addition). Hidden casting studio for the
// "Realistic Voice Acting" bloops: created at game start only when
// BARKLEY_VOICETEST is set in the environment (same pattern as oAutoQA).
// F9 toggles it. A 4x4 grid of the major cast's portraits (sFaces frames);
// arrow/hover to select, Z/click to hear that character's sample sentence
// at their own cadence. V cycles the variant for the four variant-having
// leads and autosaves the pick, so choices go live in real dialogue.
depth=-1000;
open=1; //the flag means you came here to test: start open
cur=0;
//grid order: leads, party, then the famous guest cast
vnm[0]="CHARLES BARKLEY"; vfc[0]=4;  vk[0]="barkley";
vnm[1]="HOOPZ";           vfc[1]=1;  vk[1]="hoopz";
vnm[2]="MICHAEL JORDAN";  vfc[2]=3;  vk[2]="jordan";
vnm[3]="BALTHIOS";        vfc[3]=2;  vk[3]="balthios";
vnm[4]="CYBERDWARF";      vfc[4]=6;  vk[4]="dwarf";
vnm[5]="VINCEBORG";       vfc[5]=13; vk[5]="vince";
vnm[6]="HELLBANE (BALTHIOS)"; vfc[6]=10; vk[6]="hellbane";
vnm[7]="LEBRON JAMES";    vfc[7]=11; vk[7]="lebron";
vnm[8]="KEVIN GARNETT";   vfc[8]=20; vk[8]="garnett";
vnm[9]="IVORY LATTA";     vfc[9]=22; vk[9]="latta";
vnm[10]="DICK VITALE";    vfc[10]=23; vk[10]="vitale";
vnm[11]="WILFORD BRIMLEY"; vfc[11]=27; vk[11]="brimley";
vnm[12]="JUWANNA MANN";   vfc[12]=17; vk[12]="juwanna";
vnm[13]="MR 3000";        vfc[13]=26; vk[13]="3000";
vnm[14]="CHEF BOYARDEE";  vfc[14]=25; vk[14]="boyardee";
vnm[15]="THE PUMP";       vfc[15]=-1; vk[15]="pump"; //vfc -1 = draw sPump, not an sFaces frame
//everyone has 3 variants; vsat maps each portrait to its config slot.
//Hellbane shares Balthios's slot (he IS Balthios).
vsat[0]=15; vsat[1]=16; vsat[2]=17; vsat[3]=18;
vsat[4]=19; vsat[5]=20; vsat[6]=18; vsat[7]=21;
vsat[8]=22; vsat[9]=23; vsat[10]=24; vsat[11]=25;
vsat[12]=26; vsat[13]=27; vsat[14]=28; vsat[15]=30;
//variants per entry: 3 for everyone, 5 Urkel candidates for the Pump
for (vi=0; vi<16; vi+=1) vmax[vi]=3;
vmax[15]=5;
//layout: portraits are 48x49, native-size grid
gx0=28; gy0=14; gcw=66; gch=51;
vblipf=0;  //spinning basketball cursor frame
playing=0; //bloops left in the current sample sentence
pt=0;      //frames until next bloop
pvb=2;     //frames per bloop for the sentence being played
ppm=1;     //pitch multiplier for the sentence being played (sVoxPitch)
plsnd=-1;
pw=0;
