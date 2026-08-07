function sM(argument0, argument1, argument2, argument3, argument4, argument5, argument6) {
	/*gm6argdefaults*/ if (argument0==undefined) argument0=0; if (argument1==undefined) argument1=0; if (argument2==undefined) argument2=0; if (argument3==undefined) argument3=0; if (argument4==undefined) argument4=0; if (argument5==undefined) argument5=0; if (argument6==undefined) argument6=0;
	//Add a move for enemy
	//Name, Chance of doing, Hit %, Base Damage, 1 is def 0 is bran, Variance
	move[i]=argument0; 
	movn[i]=argument1;
	movehit[i]=argument2;
	movebas[i]=argument3; 
	movedef[i]=argument4;
	movevar[i]=argument5;
	movetar[i]=argument6; //self , enemy , enemyall, allyall , ally
	i+=1;


}
