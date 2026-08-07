grace+=global.rd;
if (option[0]!="0") {

if (sKey(global.key_down,1)) { sP();
if (option[cho+1]!="0") cho+=1;
}
if (sKey(global.key_up,1)) { sP();
if (cho-1>=0) cho-=1;
}

}

if (option[0]!="0") {z=chunk; chunk=999;}
dialog_step();
if (option[0]!="0") {chunk=z;}
