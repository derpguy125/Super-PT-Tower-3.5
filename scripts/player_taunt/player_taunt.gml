function player_taunt(){
	taunttimer --;
	
	if taunttimer <= 0 then {
		state = savestate;
		sprite_index = savesprite;
		image_index = 0;
		hsp = savehsp;
		vsp = savevsp;
		image_speed = 0.25
		grv = 0.25;
		mach2 = savemach2;
	}
}