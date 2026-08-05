global.dialog=1;
itemf[0]="Protein Paste";
itemf[1]="Ecto Cooler";
itemf[2]="BBall Juice";
itemf[3]="BBall Shard";
itemf[4]="BBall Tear";
itemf[5]="Steroids";
itemf[6]="Tobacco";
itemf[7]="Chup";
itemf[8]="Insulin";
itemf[9]="Alcohol";
itemf[10]="Fstone Mvitamin";
itemf[11]="Chicken Dew";
itemf[12]="Chicken Fry";
itemf[13]="";
//global.vending=1;
if (sOvar(object_index,-1)=-1 && instance_exists(oFollower0)) {
sCinema(oBarkley,"dialog","Is... is this what I think it is?",1);
sCinema(oFollower0,"dialog","Yes, a relic from old times to be sure. From what I have studied, I would assume the massive amounts of b-ball neutrinos created from the first Chaos Dunk lie dormant in the machine as a sort of power source.",1);
sCinema(oBarkley,"dialog","What?",1);
sCinema(oFollower0,"dialog","It still works.",1);
sCinema(oBarkley,"dialog","Alright, let's check this out.",1);
sOvar(object_index,1);
}
sCinema(oBarkley,"dialog","A vending machine. What do you want to do?",0,"Buy Items","Hack","Leave");
sCinema(oBarkley,"code",cine_0486);
