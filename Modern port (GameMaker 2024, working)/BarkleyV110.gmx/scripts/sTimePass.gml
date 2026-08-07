deltaTime = current_time - global.startingTime;
global.seconds = (deltaTime/1000);
if (global.seconds>59) { global.minutes+=1; global.startingTime=current_time; }
if (global.minutes>59) { global.hours+=1; global.minutes=0; global.startingTime=current_time; }