with obj_noia {
	if key_up && state = "normal" && !instance_exists(obj_fadeout) then {
		targetRoom = other.targetRoom;
		targetDoor = other.targetDoor;
		
		hsp = 0;
		vsp = 0;
		dir = 1;
		
		state = "enterdoor";
		sprite_index = spr_entergate;
		image_index = 0;
		image_speed = 0.2;
		
		global.musicpaused = true;
		
		other.alarm[0] = 120;
		
	}
}