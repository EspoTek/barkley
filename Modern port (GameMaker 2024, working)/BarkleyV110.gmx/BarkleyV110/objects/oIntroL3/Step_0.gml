if (spill!=0 && spill<59) { //80 224 48
cou+=global.rd;
if (cou>2) {
cou-=2;
instance_create(80+random(16),48+random(16),oDiapuff);
instance_create(224+random(16),48+random(16),oDiapuff);
}
}
