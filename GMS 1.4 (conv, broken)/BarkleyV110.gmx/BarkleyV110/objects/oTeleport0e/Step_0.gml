if (place_meeting(x,y,oBarkley)) {
if (x<500) {
with (oBarkley) x+=1040;
with (oFollower) x+=1040;
for (jj=0; jj<151; jj+=1) {
oBarkley.movf[jj,0]+=1040;
}
} else {
with (oBarkley) x-=1040;
with (oFollower) x-=1040;
for (jj=0; jj<151; jj+=1) {
oBarkley.movf[jj,0]-=1040;
}
}
}
