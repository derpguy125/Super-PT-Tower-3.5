function player_machdive(){
	hsp = dir * movespeed;
	vsp = movespeed;
	
	if !audio_is_playing(sfx_roll) && ground
		sound(sfx_roll)
	
	image_speed = 0.25;
	
	if ground && vsp > 0 {
		state = "machroll";
		sprite_index = spr_machroll;
		image_index = 0;
		audio_stop_sound(sfx_roll);
		image_speed = 0.5;
		grv = 0.25;
	}
}