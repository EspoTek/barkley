// VOICE TEST screen (port addition). Hidden dev tool for auditioning the
// "Realistic Voice Acting" dialogue bloops: created at game start only when
// BARKLEY_VOICETEST is set in the environment (same pattern as oAutoQA).
// F9 toggles it anywhere; picks write straight to sat[15..18] and autosave,
// so a chosen voice is immediately live in real dialogue too.
depth=-1000;
open=1; //the flag means you came here to test: start open
cur=0;
vch[0]="BARKLEY"; vch[1]="HOOPZ"; vch[2]="JORDAN"; vch[3]="BALTHIOS";
vsat[0]=15; vsat[1]=16; vsat[2]=17; vsat[3]=18;
vname[0]="mVoxBarkley"; vname[1]="mVoxHoopz"; vname[2]="mVoxJordan"; vname[3]="mVoxBalthios";
//variant captions: measured basis from the real voice samples (f0 dominant mode)
vdesc[0,0]="'93 interview  123Hz";
vdesc[0,1]="TNT-era deep  100Hz";
vdesc[0,2]="extra deep  85Hz";
vdesc[1,0]="Fresh Prince '90  147Hz bright";
vdesc[1,1]="energetic  160Hz snappy";
vdesc[1,2]="smoother  135Hz";
vdesc[2,0]="ref interview  90Hz slow";
vdesc[2,1]="deeper  78Hz slow";
vdesc[2,2]="brighter  105Hz slow";
vdesc[3,0]="'03 rookie  120Hz";
vdesc[3,1]="brighter heir  135Hz";
vdesc[3,2]="warmer  105Hz";
playing=0; //bloops left in the current sample sentence
pt=0;      //frames until next bloop
plsnd=-1;
pw=0;
