function sR() {
	//Gets a bunch of arguments and randomizes them
	// Port note: GM6 argument[] had 16 zero-filled slots; use argument_count.
	var ww;
	ww = 0;
	while (ww < argument_count && string(argument[ww]) != "0") ww += 1;
	return (argument[floor(random(ww))]);
}
