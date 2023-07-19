function player_machend(){
	move = key_right - key_left;
	
	if movespeed > 0 then movespeed -= 0.25;
	else {
		state = "normal";
		movespeed = 0;
		mach2 = 0;
	}
	
	hsp = movespeed * dir;
}