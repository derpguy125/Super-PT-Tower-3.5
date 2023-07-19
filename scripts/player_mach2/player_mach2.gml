function player_mach2(){
	hsp = dir * movespeed;
	
	if !audio_is_playing(sfx_mach2) && ground
		sound(sfx_mach2)
	
	move = key_right - key_left
	
	if !key_jump && !varJump && vsp < 0.5 {
		vsp /= 2;
		varJump = true;
	}
	
	if ground && vsp > 0 {
		varJump = false;
		sprite_index = spr_mach2;
	}
	
	if ground && key_jumpP {
		sprite_index = spr_mach2jump;
		image_index = 0;
		vsp = -5.5
		audio_stop_sound(sfx_mach2);
		sound(sfx_jump);
	}
	
	if mach2 < 100 then {
		mach2 += 1.5;
	} else {
		state = "mach3";
		sprite_index = spr_mach3;
		image_index = 0;
		audio_stop_sound(sfx_mach2);
		movespeed = 10;
		mach2 = 100;
	}
	
	if move = -dir && ground {
		
		state = "machslide";
		sprite_index = spr_mach2drift;
		image_index = 0;
		mach2 = 20;
		audio_stop_sound(sfx_mach2);
		sound(sfx_machslideboost);
	}
	
	if ground && !key_dash {
		sprite_index = spr_mach2end;
		image_index = 0;
		state = "machend";
		mach2 = 0;
		audio_stop_sound(sfx_mach2);
		sound(sfx_comboend);
	}
	
	if (!ground && place_meeting(x+dir,y,obj_solid) && !place_meeting(x+dir,y,obj_destroyables))
	or  (ground && place_meeting(x+dir,y,obj_solid) && place_meeting(x,y+1,obj_slope) && !place_meeting(x+dir,y,obj_destroyables)) {
		state = "climbwall";
		sprite_index = spr_wallclimb;
		image_index = 0;
	}
	
	if place_meeting(x + dir, y, obj_solid) && !place_meeting(x + dir, y, obj_destroyables) && ground && state != "climbwall" {
		state = "bump";
		sprite_index = spr_wallbump;
		image_index = 0;
		vsp = -3;
		hsp = -(3 * dir)
		mach2 = 0;
		bumptimer = 30;
		image_index = 0;
		create_shake(8)
		audio_stop_sound(sfx_mach2);
		sound(sfx_groundpound);
	}
	
	if key_down && ground {
		audio_stop_sound(sfx_mach2);
		state = "machroll";
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
		
		audio_stop_sound(sfx_mach2);
		sound(sfx_taunt);
	}
}