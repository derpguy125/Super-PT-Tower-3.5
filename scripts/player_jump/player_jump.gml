// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_jump() {
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
			movespeed = 3;
		} else {
			movespeed = 0;
		}
	}
	
	if move == -dir {
		mach2 = 0;
		movespeed = 0;
		momentum = false;
	}
	
	if place_meeting(x + dir, y, obj_solid) {
		momentum = false;
		mach2 = 0;
		movespeed = 0;
	}
	
	if key_dash && momentum && ground && vsp > 0 {
		mach2 = 0;
		state = "mach1";
		image_index = 0;
		sprite_index = spr_mach;
		varJump = false;
	}
	
	if ground && vsp > 0 && (!key_dash or !momentum) {
		
		state = "normal";
		image_index = 0;
		varJump = false;
		momentum = false;
	}
	
	if key_tauntP {
		savestate = state;
		savesprite = sprite_index;
		savehsp = hsp;
		savevsp = vsp;
		
		sprite_index = spr_taunt;
		image_index = irandom(sprite_get_number(spr_taunt) - 1);
		image_speed = 0;
		hsp = 0;
		vsp = 0;
		grv = 0;
		
		state = "taunt";
		taunttimer = 30;
		
		sound(sfx_taunt);
	}
}