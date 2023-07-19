if !global.panic {
	if room == Realtitlescreen
		global.music = mu_select;
		
	
	
	if !audio_is_playing(global.music) {
		audio_stop_all();
		sound(global.music);
	}
} else {
	// nothing	
}