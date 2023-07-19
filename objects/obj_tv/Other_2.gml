
init_inputs();

ini_open("saveData.ini");

global.option_fullscreen = ini_read_real("Option", "fullscreen", 0);
global.option_resolution = ini_read_real("Option", "resolution", 1);
global.pal				 = ini_read_real("Option", "palette",    0);

ini_close();

if global.option_fullscreen then window_set_fullscreen(true);
else window_set_fullscreen(false);

if global.option_resolution = 0
	window_set_size(480,270);
	
if global.option_resolution = 1
	window_set_size(960,540);
	
if global.option_resolution = 2
	window_set_size(1920,1080);

display_set_gui_size(480,270);

alarm[11] = 1;