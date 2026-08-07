if (sKey(global.key_action) || sKey(global.key_cancel) || sKey(global.key_start) && oBBalthios.defending=0) {
if (mash=0) {
mash=1;
image_xscale+=0.2;
image_yscale+=0.2;
sal+=0.1;
}
} else mash=0;

if (x<target.x) {
_tp=oBBalthios.target._vp;
dmf=(oBBalthios._brain*sal)-target._brain;
dmf=max(1,dmf);
if (oBBalthios.defending=0) sBarkDmg("zauber");
else sBarkDmg("counter");
instance_destroy();
if (oBBalthios.defending=0) global.b_obj=target;
//i=0; movevar[i]=0.5; movebas[i]=10; movetar[i]='enemy'; sDamage(i); cov=0;
if (_tp!=oBBalthios.target._vp) {
if (type="fire") { sS(mBFireZ); target.col_use=c_red; target.col_duration=5; target.col_stray=.15; }
if (type="ice") { sS(mBIceZ); target.col_use=c_aqua; target.col_duration=5; target.col_stray=.15; }
if (type="thunder") { sS(mBThunderZ); target.col_use=c_yellow; target.col_duration=5; target.col_stray=.15; }
if (type="time") { sS(mBTimeZ); target.col_use=c_purple; target.col_duration=5; target.col_stray=.35; }
if (type="hell") { sS(mBHellZ); target.col_use=c_gray; target.col_duration=5; target.col_stray=.15; }
if (type="bloody") { sS(mBBloodZ); target.col_use=c_maroon; target.col_duration=5; target.col_stray=.15; }
if (type="snail") { sS(mBSnailZ); target.col_use=make_color_rgb(187,130,38); target.col_duration=5; target.col_stray=.15; }
}
}
