if !selected {
	
	get_input();
	
	if key_downP && selection < 3 {
		selection ++;
		sound(sfx_step);
	}
	
	if key_upP && selection > 0 then {
		selection --;	
		sound(sfx_step);
	}
	
	if buffer == 0 && key_jumpP {
		switch selection {
			case 0:
				selected = true;
				alarm[0] = 30;
				break;
			case 1:
				selected = true;
				alarm[1] = 5;
				break;
			case 2:
				selected = true;
				alarm[2] = 5;
				break;
			case 3:
				selected = true;
				alarm[3] = 5;
				break;
		}
		sound(sfx_collectpizza);
	}
	
	if buffer > 0
		buffer --;
}