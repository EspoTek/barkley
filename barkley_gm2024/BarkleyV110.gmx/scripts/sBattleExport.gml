//Get HP's
var i,g,h;
for (i=0; global.b_party[i]!=-999; i+=1) {
 global.char_chp[global.b_partyn[i]]=ceil(global.b_pid[i]._vp);
 global.char_czp[global.b_partyn[i]]=ceil(global.b_pid[i]._bp);
 global.char_res2[global.b_partyn[i]]="";
 jin=0;
 if (global.b_pid[i].c_glaucoma=1 && jin<1) { jin+=1; sCondition(global.b_partyn[i],'Glaucoma'); }
 if (global.b_pid[i].c_diabetes=1 && jin<1) { jin+=1; sCondition(global.b_partyn[i],'Diabetes'); }
 if (global.b_pid[i].c_aspergers=1 && jin<1) { jin+=1; sCondition(global.b_partyn[i],'Aspergers'); }
 if (global.b_pid[i].c_parkinsons=1 && jin<1) { jin+=1; sCondition(global.b_partyn[i],'Parkinsons'); }
 //if (c_handicapable=1) sCondition(global.b_partyn[i],'Handicapable');
}