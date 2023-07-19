// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_crouch(){
	
	// Basic Movement
	move = key_right - key_left
	
	if move != 0 then {
		dir = move
		movespeed = 2;
		
		sprite_index = spr_crouchwalk;
	} else {
		sprite_index = spr_crouch;
		movespeed = 0;
	}
	
	hsp = movespeed * dir;
	
	if solids((x+dir),y) && move == dir {
		movespeed = 0;
	}
	
	
	
	// Jumping and Falling
	if key_jumpP and ground then {
		vsp = -3.5;
		sprite_index = spr_crouchjump;
		image_index = 0;
		state = "crouchjump";
		sound(sfx_jump);
	}
	
	if !ground then {
		state = "crouchjump";
		sprite_index = spr_crouchjump;
		image_index = 1;
	}
	
	if !key_down && !solids(x,y-8) && !key_dash {
		state = "normal";
		mask_index = spr_player_mask;
	}
}