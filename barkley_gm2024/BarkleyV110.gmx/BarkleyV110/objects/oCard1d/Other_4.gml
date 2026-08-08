//Port fix: oLeonard is created after oCard1d in RomSpaldingBlueR2, so hiding him
//from Create wrote to an object with no instances -- ignored by GM6, fatal in
//GameMaker 2024. The self-destroy moved here too so it still happens after the
//hide, exactly as the original ordered them; Room Start runs before any Step, so
//nothing observable shifts.
with (oLeonard) visible=0;
if (sOvar(object_index,-1)=1) {
instance_destroy();
}
