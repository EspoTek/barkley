global.descriptor="Kamikaze Jam";
if (exec!=-1) { 
if (_bp<5) { event_user(floor(random(3))); exit; }
_bp-=5; fff=0; exec=-1; stage=0; wdoing=3; walk=target; walkdist=160; oy=y; exit; 
}
if (stage=0) {
if (fff=0) { fff=1; img=6; }
if (fff>19) { stage=1; fff=1; path_start(pCreelman,8,0,0); hox=x; hoy=y; }
} else if (stage=1) {
image_angle=point_direction(hox,hoy,x,y);
hox=x;
hoy=y;
} else if (stage=2) {
doing=-1; image_angle=0; img=1;
}
if (fff!=0) fff+=1;
