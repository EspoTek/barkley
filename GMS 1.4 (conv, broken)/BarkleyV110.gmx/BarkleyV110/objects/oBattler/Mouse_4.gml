if (instance_exists(oDebugger)=0) exit;
sBCondition("inflict","diabetes",id);
//_vp=0;
//kill=1;
mw=floor(random(4));
if (mw=0) { sBCondition("guard",-ceil(_guard*.2),id); }
if (mw=1) { sBCondition("power",-ceil(_power*.2),id); }
if (mw=2) { sBCondition("speed",-ceil(_speed*.2),id); }
if (mw=3) { sBCondition("brain",-ceil(_brain*.2),id); }
//show_message(string(_vp));
//kill=1;
//shake=10;
//if (global.b_debug=1) {
//sBCondition('inflict',get_string("Inflict what?","diabetes"),id);
//sBCondition('inflict','handicapable',id);
//sBCondition('inflict','montezuma',id);
//sBCondition('inflict','fouled',id);
//}
//exit;
//sBCondition('inflict','stroke',id);
//sVerifyStats();
//_vp=0;
//exit;
//_vp=1;
//show_message(string(_vp) + " " +string(_rvp));
exit;
kill=1;
_vp=0;
exit;
