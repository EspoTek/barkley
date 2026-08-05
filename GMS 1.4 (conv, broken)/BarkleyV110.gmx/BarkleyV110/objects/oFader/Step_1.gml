if (fade=3) {
if (cou>9) { cou=0; grow+=1; if (grow>9) { effector.sprt=un; instance_destroy(); } }
cou+=global.rd;
if (cou<grow) effector.sprt=un;
else effector.sprt=older;
}
