// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_machslide(){
	move = key_right - key_left;
	
	if movespeed > 0 then movespeed -= 0.3;
	else if ground then {
		dir = -dir;
		if mach2 >= 100 {
			state = "mach3";
			sprite_index = spr_mach3;
			image_index = 0;
			movespeed = 10;
		} else {
			state = "mach2";
			sprite_index = spr_mach2;
			image_index = 0;
			movespeed = 8;
		}
	}
	
	hsp = movespeed * dir;
}