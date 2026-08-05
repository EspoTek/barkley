global.temp=0;
for (i=0; i<9; i+=1) {
if (sl[i].x=slx[i] && sl[i].y=sly[i]) global.temp+=1;
}
if (global.temp=9) { active=0; global.freeze=0; with (oPuzzle0) event_user(2); }
