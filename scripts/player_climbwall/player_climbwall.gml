function player_climbwall(){
	if !audio_is_playing(sfx_mach2)
		sound(sfx_mach2);
	
	vsp = (-movespeed);
	
	if !key_dash {
		state = "jump";
		mach2 = 0;
		sprite_index = spr_jump;
		audio_stop_sound(sfx_mach2);
	}
	
	if !solids(x + dir, y) {
		if mach2 < 100 {
			state = "mach2";
			sprite_index = spr_mach2;
		} else {
			audio_stop_sound(sfx_mach2);
			state = "mach3";
			sprite_index = spr_mach3;
		}
		vsp = 1;
		return;
	}
	
	if (key_jumpP && key_dash) {
		if mach2 >= 100 {
			mach2 = 100;
			vsp = -5.5;
			state = "mach3";
			dir = -dir;
			sprite_index = spr_mach3;
			audio_stop_sound(sfx_mach2);
			sound(sfx_jump);
		} else {
			mach2 = 20;
			vsp = -5.5;
			state = "mach2";
			dir = -dir;
			sprite_index = spr_mach2;
			audio_stop_sound(sfx_mach2);
			sound(sfx_jump);
		}
	}
	
	if place_meeting(x,y-1,obj_solid) && !place_meeting(x,y-1,obj_destroyables) {
		sprite_index = spr_hitceiling;
		image_index = 0;
		state = "ceilinghit";
		mach2 = 0;
		movespeed = 0;
		grv = 0;
		audio_stop_sound(sfx_mach2);
		sound(sfx_groundpound);
		create_shake(8)
	}
}