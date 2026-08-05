//128+24
global.dialog=1;
if (x<104) ppp=3;
else if (x<104+24) ppp=5;
else if (x<104+48) ppp=8;
else if (x<104+48+24) ppp=11;
else if (x<104+48+48) ppp=15;
else if (x<104+48+48+24) ppp=19;
else if (x<104+48+48+48) ppp=24;

if (x<104) ppp=11;
else if (x<104+24) ppp=3;
else if (x<104+48) ppp=19;
else if (x<104+48+24) ppp=8;
else if (x<104+48+48) ppp=24;
else if (x<104+48+48+24) ppp=15;
else if (x<104+48+48+48) ppp=5;
image_index=!image_index; image_speed=0;
global.tamp=id;
sCinema(oBarkley,"code",cine_0038);
