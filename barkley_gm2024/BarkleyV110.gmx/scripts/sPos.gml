//Saves and loads positions
var i, pos;
if (argument0='save') {
 //global.cvx=oBarkley.x;
 //global.cvy=oBarkley.y;
 global.c_=0;
 global.cl_=1;
 with (oPlayer) {
   global.catsav[global.c_,0]=id;
   global.catsav[global.c_,1]=x;
   global.catsav[global.c_,2]=y;
   global.catsav[global.c_,3]=t;
   global.catsav[global.c_,4]=visible;
   global.c_+=1;
 }
 global.c__=global.c_;
} else if (argument0='load') { //load
 global.cl_=0;
 for (i=0; i<global.c__; i+=1) {
  global.c_=i;
  with (global.catsav[global.c_,0]) {
   x=global.catsav[global.c_,1];
   y=global.catsav[global.c_,2];
   t=global.catsav[global.c_,3];
   visible=global.catsav[global.c_,4];
  }
 }
}