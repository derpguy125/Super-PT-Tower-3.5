function init_inputs(){
	ini_open("saveData.ini")
	
	global.key_up		= ini_read_string("ControlsKeys", "up", 38)
	global.key_right	= ini_read_string("ControlsKeys", "right", 39)
	global.key_left		= ini_read_string("ControlsKeys", "left", 37)
	global.key_down		= ini_read_string("ControlsKeys", "down", 40)
	global.key_jump		= ini_read_string("ControlsKeys", "jump", 90)
	global.key_grab		= ini_read_string("ControlsKeys", "grab", 88)
	global.key_taunt	= ini_read_string("ControlsKeys", "taunt", 67)
	global.key_dash		= ini_read_string("ControlsKeys", "dash", 16)
	global.key_start	= ini_read_string("ControlsKeys", "start", 27)
	
	ini_close();
}