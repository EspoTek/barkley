if (variable_global_exists("tdm")=0) global.tdm=0;
image_index=global.tdm; image_speed=0; global.tdm+=1;
if (global.tdm<3) depth=5;
else depth=-5;
