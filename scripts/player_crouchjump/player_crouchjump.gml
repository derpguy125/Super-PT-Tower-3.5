// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_crouchjump() {
	move = key_right - key_left
	
	if !momentum {
		hsp = move * movespeed;	
	} else hsp = dir * movespeed;
	
	if !key_jump && !varJump && vsp < 0.5 {
		vsp /= 5
		varJump = true;
	}
	
	if !momentum {
		if move != 0 then {
			dir = move
			movespeed = 2;
		} else {
			movespeed = 0;
		}
	}
	
	if place_meeting(x + dir, y, obj_solid) {
		movespeed = 0;
	}
	
	if ground && vsp > 0 {
		state = "crouch";
		image_index = 0;
		varJump = false;
	}
}