global.temp=id;
cou=0;
with (oWall) {
if (place_meeting(x,y,global.temp)) {
global.temp.wll[global.temp.cou]=id;
global.temp.cou+=1;
}
}
