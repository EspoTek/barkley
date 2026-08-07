//Calls back-up
global.b_px[0]=8; global.b_py[0]=48 global.b_px[1]=24; global.b_py[1]=48 global.b_px[2]=16; global.b_py[2]=64 global.b_px[3]=8; global.b_py[3]=80 global.b_px[4]=40; global.b_py[4]=48 global.b_px[5]=32; global.b_py[5]=64 global.b_px[6]=24; global.b_py[6]=80 global.b_px[7]=16; global.b_py[7]=96 global.b_px[8]=8; global.b_py[8]=112 global.b_px[9]=56; global.b_py[9]=48 global.b_px[10]=48; global.b_py[10]=64 global.b_px[11]=40; global.b_py[11]=80 global.b_px[12]=32; global.b_py[12]=96 global.b_px[13]=24; global.b_py[13]=112 global.b_px[14]=8; global.b_py[14]=144 global.b_px[15]=40; global.b_py[15]=112 global.b_px[16]=48; global.b_py[16]=96 global.b_px[17]=56; global.b_py[17]=80 global.b_px[18]=64; global.b_py[18]=64 global.b_px[19]=72; global.b_py[19]=48 global.b_px[20]=32; global.b_py[20]=128 global.b_px[21]=16; global.b_py[21]=128 global.b_px[22]=24; global.b_py[22]=144 global.b_px[23]=40; global.b_py[23]=144 global.b_px[24]=48; global.b_py[24]=128 global.b_px[25]=56; global.b_py[25]=112 global.b_px[26]=64; global.b_py[26]=96 global.b_px[27]=72; global.b_py[27]=80 global.b_px[28]=80; global.b_py[28]=64 global.b_px[29]=88; global.b_py[29]=48;
repeat (10) {
global.b_dd=floor(random(30));
with (oBattler) {
if (point_distance(slav.x,slav.y,view_xview[0]+8+global.b_px[global.b_dd],view_yview[0]+4+global.b_py[global.b_dd])<48) { global.b_dd=-9; break; }
}
if (global.b_dd!=-9) return(global.b_dd);
}
return(-999);