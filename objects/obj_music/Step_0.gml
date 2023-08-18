if !global.panic {
	var _rmname = room_get_name(room);
	
	if room == Realtitlescreen
		set_level_music(mu_titletemp,mu_titletemp);
		
	if string_starts_with(_rmname,"hub_")
		set_level_music(mu_hubtemp,mu_hubsecret);
		
	if global.level != "none" then switch global.level {
		case "notebook":
			set_level_music(mu_test,mu_hubsecret);
			break;
		default:
			set_level_music(mu_titletemp,mu_titletemp);
			break;
	}
		
	
	if !global.insecret {
		if global.music != global.levelsong then global.music = global.levelsong
	} else {
		if global.music != global.secretsong then global.music = global.secretsong
	}
	
	
	if !audio_is_playing(global.music) {
		audio_stop_all();
		music(global.music);
	}
} else {
	// nothing	
}

if global.musicpaused {
	audio_pause_sound(global.music);
} else audio_resume_sound(global.music);