if (stage=0) {
if (global.selected=0) {
if (sOvar(object_index,-1)=-1) sOvar(object_index,1);
sCinema(oBarkley,"dialog","There's a lot of books on here. Wait, there's three books on here labelled 1, 2, and 3. It looks like you can pull on them, but they won't seperate from the bookcase.",1);
sCinema(oBarkley,"code",cine_0396);
} else if (global.selected=1) {
if (sOvar(object_index,-1)=2) {
sCinema(oBarkley,"dialog","I don't need to use this again.",1);
sCinema(oBarkley,"code",cine_0396);
} else if (sOvar(object_index,-1)=1) {
sCinema(oBarkley,"dialog","I guess I could pull the books in a certain order... Maybe the order is in the room some where? I wonder if there are any number references in this room...",1);
sCinema(oBarkley,"dialog","Pull which book?",0,"1","2","3","Leave.");
sCinema(oBarkley,"code",cine_0407);
} else {
sCinema(oBarkley,"dialog","What can I use? It's just books.",1);
sCinema(oBarkley,"code",cine_0396);
}
} else if (global.selected=2) {
sCinema(oBarkley,"dialog","Why would I want to do that?",1);
sCinema(oBarkley,"code",cine_0396);
} else {
sCinema(oBarkley,"code",cine_0006);
}
}
