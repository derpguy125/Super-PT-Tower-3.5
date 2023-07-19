function player_mach3(){
	if ground {
		if !audio_is_playing(sfx_mach3) && movespeed < 16 sound(sfx_mach3);
		if !audio_is_playing(sfx_mach4) && movespeed >=16 sound(sfx_mach4);
	}
		
	hsp = dir * movespeed;
	
	move = key_right - key_left
	
	if !key_jump && !varJump && vsp < 0.5 {
		vsp /= 2;
		varJump = true;
	}
	
	if ground && vsp > 0 {
		varJump = false;
		sprite_index = spr_mach3;
	}
	
	if ground && key_jumpP {
		sprite_index = spr_mach3jump;
		image_index = 0;
		vsp = -5.5;
		audio_stop_sound(sfx_mach3);
		audio_stop_sound(sfx_mach4);
		sound(sfx_jump);
	}
	
	if move = -dir && ground {
		
		state = "machslide";
		sprite_index = spr_mach3drift;
		image_index = 0;
		mach2 = 100;
		audio_stop_sound(sfx_mach3);
		audio_stop_sound(sfx_mach4);
		sound(sfx_machslideboost);
		return;
	}
	
	if move = dir {
		movespeed += 0.075;	
	} else if movespeed < 10 {
		movespeed -= 0.1;	
	} else movespeed = 10;
	
	if movespeed > 20 {
		sprite_index = spr_crazyrun;
		audio_stop_sound(sfx_mach3);
	} else {
		sprite_index = spr_mach3;
		audio_stop_sound(sfx_mach4);
	}
	
	if ground && !key_dash {
		state = "machend";
		sprite_index = spr_mach3end;
		image_index = 0;
		mach2 = 0;
		audio_stop_sound(sfx_mach3);
		audio_stop_sound(sfx_mach4);
		sound(sfx_comboend);
	}
	
	if (!ground && place_meeting(x+dir,y,obj_solid) && !place_meeting(x+dir,y,obj_destroyables))
	or  (ground && place_meeting(x+dir,y,obj_solid) && place_meeting(x,y+1,obj_slope) && !place_meeting(x+dir,y,obj_destroyables)) {
		state = "climbwall";
		sprite_index = spr_wallclimb;
		image_index = 0;
		audio_stop_sound(sfx_mach3);
		audio_stop_sound(sfx_mach4);
	}
	
	if place_meeting(x + dir, y, obj_solid) && !place_meeting(x + dir, y, obj_destroyables) && ground && state != "climbwall" {
		state = "bump";
		sprite_index = spr_wallbump;
		image_index = 0;
		vsp = -3;
		hsp = -(6 * dir)
		mach2 = 0;
		bumptimer = 30;
		image_index = 0;
		create_shake(16)
		audio_stop_sound(sfx_mach3);
		audio_stop_sound(sfx_mach4);
		sound(sfx_groundpound);
	}
	
	if key_down && ground {
		audio_stop_sound(sfx_mach3);
		audio_stop_sound(sfx_mach4);
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
		
		audio_stop_sound(sfx_mach3);
		audio_stop_sound(sfx_mach4);
		sound(sfx_taunt);
	}
}