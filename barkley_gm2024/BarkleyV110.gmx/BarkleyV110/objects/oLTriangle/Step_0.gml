//Port: `slav` is the sparkle instance, and taking the item destroys it from
//Other_12 while THIS object is still alive -- it only goes away later, when the
//queued cine row runs. So this ran for at least one more step against a dead
//instance. GM6 kept destroyed instances addressable until the end of the step;
//GameMaker 2024 does not, and it is fatal. `with` is a no-op when it is gone.
with (slav) depth=other.depth-1;
