if (variable_global_exists("trm")=0) global.trm=0;
image_index=global.trm; image_speed=0; global.trm+=1;
if (global.trm<3) depth=5;
else depth=-5;
