if (place_meeting(x,y,oBarkley)) event_user(1);
if (spill!=0 && spill<59) {
cou+=global.rd;
if (cou>2) {
spill+=1;
cou-=2;
instance_create(752+random(32),288+random(32),oDiapuff);
}
}
