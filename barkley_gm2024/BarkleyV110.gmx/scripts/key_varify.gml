{
//Used to check for N/A keys. Yes or no return.
//Uses key_recognizer() as a base.
ii=0;
while (ii<global.key_amount) {
if (key_recognizer(global.cpref[ii])='N/A') return(1);
ii+=1;
}
return(0);
}
