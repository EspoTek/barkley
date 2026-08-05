if (other.id!=target) exit;
instance_destroy();
if (oBHoopz.doing>4) global.b_obj=other.id;
if (type=3) {
sBCondition("inflict","diabetes",target);
} else {
olk=oBHoopz.target;
//oBHoopz.shrt=vil;
oBHoopz.target=target;
if (oBHoopz.skillusing=0) {
if (type=0) with (oBHoopz) sBarkDmg("rapid"); //20
if (type=1) with (oBHoopz) sBarkDmg("aimed"); //50
if (type=2) with (oBHoopz) sBarkDmg("mega"); //80
} else {
if (type=0) with (oBHoopz) sSkillDmg("rapid"); //20
if (type=1) with (oBHoopz) sSkillDmg("aimed"); //50
if (type=2) with (oBHoopz) sSkillDmg("mega"); //80
}
oBHoopz.target=olk;
}
