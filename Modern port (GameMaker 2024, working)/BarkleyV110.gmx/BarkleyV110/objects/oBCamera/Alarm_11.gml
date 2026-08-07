for (i=0; global.b_party[i]!=-999; i+=1) {
if (global.b_pid[i]._vp<=0) global.b_pid[i].kill=1;
}
sVerifyStats();
room_speed=30;
