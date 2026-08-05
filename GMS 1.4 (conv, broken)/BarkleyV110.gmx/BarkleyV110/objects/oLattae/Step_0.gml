if (phase=1) {
image_xscale+=global.rd/20;
image_yscale+=global.rd/20;
y-=(global.rd*image_xscale)*1.9;
if (image_xscale>4) phase=2;
} else if (phase=2) {
y-=global.rd*3;
cou+=global.rd;
if (cou>30) { cou=0; phase=2.1; }
} else if (phase=2.1) {
y+=global.rd*3;
cou+=global.rd;
if (cou>30) phase=3;
} else if (phase=3) {
image_xscale-=global.rd/20;
image_yscale-=global.rd/20;
y+=(global.rd*image_xscale)*1.9;
if (image_xscale<1) { image_xscale=1; image_yscale=1; phase=4; }
}
