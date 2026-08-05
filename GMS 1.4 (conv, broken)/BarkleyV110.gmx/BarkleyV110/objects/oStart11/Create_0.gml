event_inherited();
name="Neo New York";
facing=2;
if (sA("check",mFalling)=0) {
sA("stopall");
sA("loop",mFalling);
}
