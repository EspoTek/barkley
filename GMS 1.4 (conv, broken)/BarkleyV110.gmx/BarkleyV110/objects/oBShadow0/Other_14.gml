global.descriptor="Verboten Jam";
global.b_obj=id;;
if (exec!=-1) { 
fff=0; exec=-1; stage=0; wdoing=4; walk=target; walkdist=100; oy=y; exit; 
}
if (stage=0) {
if (fff=0) { fff=1; img=6; }
if (fff>2) { stage=1; fff=1; sound_loop(mBEarthr); path_start(pVerboten,4,0,0); hox=x; hoy=y; }
} else if (stage=1) {
image_angle=point_direction(hox,hoy,x,y);
hox=x;
hoy=y;
} else if (stage=2) {
doing=-1; image_angle=0; img=1;
}
if (fff!=0) fff+=1;
