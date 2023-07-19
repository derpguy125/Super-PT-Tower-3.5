function player_machroll(){
	hsp = dir * movespeed;
	
	if !audio_is_playing(sfx_roll) && ground
		sound(sfx_roll)
	
	move = key_right - key_left
	
	image_speed = 0.5;
	
	if ground && vsp > 0 {
		varJump = false;
		sprite_index = spr_machroll;
	}
	
	if place_meeting(x + dir, y, obj_solid) && !place_meeting(x + dir, y, obj_destroyables) && ground && state != "climbwall" {
		state = "bump";
		sprite_index = spr_wallbump;
		image_index = 0;
		mach2 = 0;
		bumptimer = 15;
		image_index = 0;
		audio_stop_sound(sfx_roll);
		sound(sfx_rollend);
		image_speed = 0.25;
		mask_index = spr_player_mask;
	}
	
	if !ground && key_down {
		sprite_index = spr_machdive;
		image_index = 0;
		grv = 0;
		state = "machdive";
	}
	
	if ground && !key_down && !solids(x,y-8) {
		if mach2 >= 100 {
			state = "mach3";
			sprite_index = spr_mach3;
			image_index = 0;
		} else {
			state = "mach2";
			sprite_index = spr_mach2;
			image_index = 0;
		}
		audio_stop_sound(sfx_roll);
		mask_index = spr_player_mask;
		image_speed = 0.25;
	}
}