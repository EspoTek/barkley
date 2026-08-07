function __background_set(argument0, argument1, argument2) {
	/*gm6argdefaults*/ if (argument0==undefined) argument0=0; if (argument1==undefined) argument1=0; if (argument2==undefined) argument2=0;
	var __prop = argument0;
	var __bind = argument1;
	var __val = argument2;

	var __backinfo = __background_get_element(__bind);

	__background_set_internal(__prop, __bind, __val, __backinfo);

	var __res = __background_get_internal(__prop, __bind, __backinfo);
	return __res;


}
