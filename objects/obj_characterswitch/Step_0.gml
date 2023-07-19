// Increment image index for sprite
index += 0.25;
if index > sprite_get_number(spr_noia_idle)
	index = 0;

// Lerp sprite for awesome switching FX
if xx != targXX then
	xx = lerp(xx,targXX,0.2);
else xx = targXX;

// Actually select the palette
get_input();

if key_leftP && pal_selected > 0 {
	pal_selected --;
	sound(sfx_step);
	targXX += 64;
}

if key_rightP && pal_selected < 31 {
	pal_selected ++;
	sound(sfx_step);
	targXX -= 64
}

if key_jumpP {
	ini_open("saveData.ini");
	ini_write_real("Option", "palette", pal_selected);
	global.pal = pal_selected;
	ini_close();
	sound(sfx_collectpizza);
	if instance_exists(obj_titlescreen) {
		obj_titlescreen.selected = 0;
		obj_titlescreen.buffer = 5;
	}
	instance_destroy();
}

if key_grabP {
	sound(sfx_pephurt);
	if instance_exists(obj_titlescreen) {
		obj_titlescreen.selected = 0;
		obj_titlescreen.buffer = 5;
	}
	instance_destroy();	
}