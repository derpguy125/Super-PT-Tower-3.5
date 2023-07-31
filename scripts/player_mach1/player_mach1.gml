// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_mach1(){
	move = key_right - key_left;
	
	if !audio_is_playing(sfx_mach1)
		sound(sfx_mach1);
	
	if solids((x + dir), y) && !place_meeting((x + dir), y, obj_slope) {
		state = "normal";
		movespeed = 0;
		mach2 = 0;
		audio_stop_sound(sfx_mach1);
	}
	
	if movespeed <= 8 movespeed += 0.5;
	
	hsp = dir * movespeed;
	
	if ground && move == -dir {
		movespeed = 0;
		image_index = 0;
		dir = -dir;
		mach2 = 0;
	}
	
	if ground {
		if mach2 < 30
			mach2 ++
		if mach2 >= 30 {
			movespeed = 8;
			state = "mach2";
			sprite_index = spr_mach2;
			image_index = 0;
			audio_stop_sound(sfx_mach1);
		}
	}
	
	if !ground {
		momentum = true;
		state = "jump";
		sprite_index = spr_mach1jump;
		image_index = 0;
		audio_stop_sound(sfx_mach1);
	}
	
	if !key_dash && ground {
		state = "normal";
		image_index = 0;
		mach2 = 0;
		audio_stop_sound(sfx_mach1);
	}
	
	
	
	if key_jump && ground && key_dash {
		vsp = -5.5;
		momentum = true;
		state = "jump";
		sprite_index = spr_mach1jump
		image_index = 0;
		audio_stop_sound(sfx_mach1);
		sound(sfx_jump);
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
		taunttimer = 60;
		
		audio_stop_sound(sfx_mach1);
		sound(sfx_taunt);
	}
}