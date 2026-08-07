var fff,ggg,ii,jj;
if (argument0='add') {
 for (fff=0; global.party[fff]!=-1; fff+=1) fff=fff;
 global.party[fff]=argument1;
 global.party[fff+1]=-1;
} else if (argument0="del") {
 for (ii=0; global.party[ii]!=-1; ii+=1) {
  if (global.party[ii]=argument1) break;
 }
 if (global.party[ii]=-1) exit;
 for (jj=0; global.party[ii+jj+1]!=-1; jj+=1) {
  global.party[ii+jj]=global.party[ii+jj+1];
 }
 global.party[ii+jj]=-1;
}