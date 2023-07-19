// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_normal(){
	
	// Basic Movement
	move = key_right - key_left
	
	if move != 0 then {
		dir = move
		movespeed = 3;
		
		sprite_index = spr_walk;
	} else {
		sprite_index = spr_idle;
		movespeed = 0;
	}
	
	hsp = movespeed * dir;
	
	if solids((x+dir),y) && move == dir {
		movespeed = 0;
	}
	
	// Mach Run
	if key_dash && !solids(x+dir,y) then {
		movespeed = 0;
		state = "mach1";
		sprite_index = spr_mach;
	}
	
	// Jumping and Falling
	if key_jumpP and ground then {
		vsp = -5.5;
		sprite_index = spr_jump;
		image_index = 0;
		state = "jump";
		sound(sfx_jump);
	}
	
	if !ground then {
		state = "jump";
		sprite_index = spr_jump;
		image_index = 1;
	}
	
	// crouching
	
	if key_down && !key_dash {
		state = "crouch";
		image_index = 0;
		mask_index = spr_player_crouchmask;
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