if (place_meeting(x,y,oBarkley)) {
oCuchHoop3.progress=0;
if (oCuchHoop1.shift=0) {
with (oBarkley) { y-=480; x-=192; }
with (oCuchHoop0) { x=xstart-192; for (k=0; k<cou; k+=1) { wll[k].x=wll[k].xstart-192; } }
with (oCuchHoop2) { x=xstart-192; for (k=0; k<cou; k+=1) { wll[k].x=wll[k].xstart-192; } }
} else if (oCuchHoop1.shift=1) {
with (oBarkley) { y-=480; }
with (oCuchHoop0) { x=xstart; for (k=0; k<cou; k+=1) { wll[k].x=wll[k].xstart; } }
with (oCuchHoop2) { x=xstart; for (k=0; k<cou; k+=1) { wll[k].x=wll[k].xstart; } }
} else {
with (oBarkley) { y-=480; x+=192; }
with (oCuchHoop0) { x=xstart+192; for (k=0; k<cou; k+=1) { wll[k].x=wll[k].xstart+192; } }
with (oCuchHoop2) { x=xstart+192; for (k=0; k<cou; k+=1) { wll[k].x=wll[k].xstart+192; } }
}
}
