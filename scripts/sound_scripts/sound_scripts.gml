function sound(){
	var snd = argument[irandom((argument_count - 1))]
	audio_play_sound(snd, 1, false)
}

function music(song){
	audio_play_sound(song,10,true);
}

function set_level_music(normal,secret) {
	global.levelsong	= normal;
	global.secretsong	= secret;
}