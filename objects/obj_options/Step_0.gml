get_input();

if !instance_exists(obj_keyconfig) {
	if key_upP && selection > 0 {
		selection --;
		sound(sfx_step);
	}
	
	if key_downP && selection < 2 {
		selection ++;
		sound(sfx_step);
	}
}

// this code sucks
if (selection == 0)
{
    if (key_rightP && optionsaved_fullscreen == 0) {
        optionsaved_fullscreen = 1;
		sound(sfx_step);
	}
    if (key_leftP && optionsaved_fullscreen == 1) {
        optionsaved_fullscreen = 0;
		sound(sfx_step);
	}
    if (key_jumpP && optionsaved_fullscreen == 0) {
        window_set_fullscreen(false);
        ini_open("saveData.ini");
        ini_write_real("Option", "fullscreen", 0);
		global.option_fullscreen = 0;
        ini_close();
		
		if global.option_resolution = 0
			window_set_size(480,270);
	
		if global.option_resolution = 1
			window_set_size(960,540);
	
		if global.option_resolution = 2
			window_set_size(1920,1080);
			
		sound(sfx_enemyprojectile);
    }
    if (key_jumpP && optionsaved_fullscreen == 1) {
        window_set_fullscreen(true);
        ini_open("saveData.ini");
		ini_write_real("Option", "fullscreen", 1);
		global.option_fullscreen = 1;
        ini_close();
		
		sound(sfx_enemyprojectile);
    }
}

// this code fucking sucks but it works
if selection == 1 {
	if key_rightP && optionsaved_resolution < 2 {
		optionsaved_resolution ++;
		sound(sfx_step);
	}
	if key_leftP && optionsaved_resolution > 0 {
		optionsaved_resolution --;
		sound(sfx_step);
	}
	
	if (key_jumpP && optionsaved_resolution == 0) {
        ini_open("saveData.ini")
        ini_write_real("Option", "resolution", 0);
        ini_close()
		global.option_resolution = 0
        window_set_size(480, 270)
		obj_tv.alarm[11] = 1;
		sound(sfx_enemyprojectile);
    }
    if (key_jumpP && optionsaved_resolution == 1) {
        window_set_size(960, 540)
        ini_open("saveData.ini")
        ini_write_real("Option", "resolution", 1)
        ini_close()
		global.option_resolution = 1
		obj_tv.alarm[11] = 1;
		sound(sfx_enemyprojectile);
    }
    if (key_jumpP && optionsaved_resolution == 2) {
        window_set_size(1980, 1080)
        ini_open("saveData.ini")
        ini_write_real("Option", "resolution", 2)
        ini_close()
		global.option_resolution = 2
		obj_tv.alarm[11] = 1;
		sound(sfx_enemyprojectile);
    }
}

if buffer > 0
	buffer --;

if selection == 2 && buffer == 0 {
	if !instance_exists(obj_keyconfig) {
		if key_jumpP {
			visible = false;
			with instance_create(x,y,obj_keyconfig) {
				depth = other.depth - 1;	
			}
			
			sound(sfx_enemyprojectile);
		}
	}
}


if key_grabP && !instance_exists(obj_keyconfig) {
	sound(sfx_pephurt);
	obj_titlescreen.selected = false;
	obj_titlescreen.buffer = 5;
	instance_destroy();
}