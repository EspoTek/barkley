if (place_meeting(x,y,oBarkley)) {
if (oBarkley.x<256) {
if (oCuchHoop1.shift!=0) { 
oCuchHoop1.shift=0;
with (oCuchHoop0) { x=xstart-192; for (k=0; k<cou; k+=1) { wll[k].x=wll[k].xstart-192; } }
with (oCuchHoop2) { x=xstart-192; for (k=0; k<cou; k+=1) { wll[k].x=wll[k].xstart-192; } }
}
} else if (oBarkley.x<400) {
if (oCuchHoop1.shift!=1) { 
oCuchHoop1.shift=1;
with (oCuchHoop0) { x=xstart; for (k=0; k<cou; k+=1) { wll[k].x=wll[k].xstart; } }
with (oCuchHoop2) { x=xstart; for (k=0; k<cou; k+=1) { wll[k].x=wll[k].xstart; } }
}
} else {
if (oCuchHoop1.shift!=2) { 
oCuchHoop1.shift=2;
with (oCuchHoop0) { x=xstart+192; for (k=0; k<cou; k+=1) { wll[k].x=wll[k].xstart+192; } }
with (oCuchHoop2) { x=xstart+192; for (k=0; k<cou; k+=1) { wll[k].x=wll[k].xstart+192; } }
}
}

}
