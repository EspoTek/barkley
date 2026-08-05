global.dialog=1;
if (sOvar(object_index,-1)=1) {
sCinema(oFollower3,"dialog","Make way, clues! Gumshoe on the loose!",1);
} else {
sOvar(object_index,1);
sCinema(oFollower0,"dialog","What's the deal, Barkley? Why do you keep looking in trashcans?",1);
sCinema(oBarkley,"dialog","Clues, Balthios. Precious clues...",1);
}
