function sMoveSet(argument0, argument1, argument2, argument3, argument4, argument5, argument6) {
	//ID, Damage, Variance, 1 is def 0 is brain, Target, Hit %, Do Now
	//i=1; movevar[i]=0.5; movebas[i]=100; movetar[i]='enemy'; sDamage(i);
	i=argument0;
	movebas[argument0]=floor(argument1); 
	movevar[argument0]=argument2;
	movedef[argument0]=argument3;
	movetar[argument0]=argument4; //self , enemy , enemyall, allyall , ally
	movehit[argument0]=argument5;
	if (argument6=1) sDamage(i);


}
