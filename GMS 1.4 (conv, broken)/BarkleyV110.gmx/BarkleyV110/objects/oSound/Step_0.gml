cou+=1;
global.rush+=0.002; //0.002

for (i=0; sp[i]!=-1; i+=1) {
if (cou=round(sp[i]*30)) {
if (sl[i]=0) instance_create(0,120,oBeater);
else if (sl[i]=1) instance_create(160,120,oBeater);
else instance_create(320,120,oBeater);
}
}

exit;
num=1;
if (cou=num) instance_create(0,120,oBeater);
if (cou=num+14) instance_create(0,120,oBeater);
if (cou=num+22) instance_create(0,120,oBeater);
num=56;
if (cou=num) instance_create(320,120,oBeater);
if (cou=num+14) instance_create(320,120,oBeater);
if (cou=num+22) instance_create(320,120,oBeater);

if (cou=115) instance_create(160,120,oBeater);
if (cou=130) instance_create(0,120,oBeater);
if (cou=140) instance_create(320,120,oBeater);

if (cou=150) instance_create(0,120,oBeater);
if (cou=162) instance_create(160,120,oBeater);
if (cou=170) instance_create(160,120,oBeater);
if (cou=180) instance_create(0,120,oBeater);

if (cou=195) instance_create(320,120,oBeater);
if (cou=209) instance_create(0,120,oBeater);
if (cou=216) instance_create(320,120,oBeater);

nam=220;
if (cou=nam) instance_create(160,120,oBeater);
for (p=13; p>1; p-=1) {
nam+=p;
if (cou=nam) instance_create(160,120,oBeater);
}
