global.dialog=1;
if (sItem("Femur")>=1) {
sCinema(oBarkley,"dialog","Dog:\\*Sniff sniff**.*.*. (OOC) Give me that bone... That bone smells delicious!");
sCinema(oBarkley,"dialog","Give the dog Dekembe Motumbo's femur?",0,"Yes","No");
sCinema(oBarkley,"code",cine_0063);
} else {
sCinema(oBarkley,"dialog","Dog:\\Grrr...* Woof woof!");
}
