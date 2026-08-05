function sCinema4(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8) {
	/*gm6argdefaults*/ if (argument0==undefined) argument0=0; if (argument1==undefined) argument1=0; if (argument2==undefined) argument2=0; if (argument3==undefined) argument3=0; if (argument4==undefined) argument4=0; if (argument5==undefined) argument5=0; if (argument6==undefined) argument6=0; if (argument7==undefined) argument7=0; if (argument8==undefined) argument8=0;
	//Call from object to do on?
	//arg0 object Arg1 is command, rest is parameters
	with (oCinema4) {
	i=count;
	queue[i,0]=argument0;
	queue[i,1]=argument1;
	queue[i,2]=argument2;
	queue[i,3]=argument3;
	queue[i,4]=argument4;
	queue[i,5]=argument5;
	queue[i,6]=argument6;
	queue[i,7]=argument7;
	queue[i,8]=argument8;
	count+=1;
	queue[i+1,0]=-1;
	}


}
