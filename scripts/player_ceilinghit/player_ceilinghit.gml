function player_ceilinghit(){
	if ceilHit < 15 then {
		ceilHit ++;	
	} else {
		grv = 0.25;
		state = "jump";
		ceilHit = 0;
		sprite_index = spr_jump;
		image_index = 0;
	}
}