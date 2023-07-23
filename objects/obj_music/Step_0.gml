if !global.panic {
	var _rmname = room_get_name(room);
	
	if room == Realtitlescreen
		global.music = mu_titletemp;
		
	if string_starts_with(_rmname,"hub_")
		global.music = mu_hubtemp;
		
	
	
	if !audio_is_playing(global.music) {
		audio_stop_all();
		sound(global.music);
	}
} else {
	// nothing	
}