with obj_noia {
	if key_up && state = "normal" && !instance_exists(obj_fadeout) then {
		targetRoom = other.targetRoom;
		targetDoor = other.targetDoor;
		
		hsp = 0;
		vsp = 0;
		
		state = "enterdoor";
		sprite_index = spr_enterdoor;
		image_index = 0;
		
		instance_create(0,0,obj_fadeout);
	}
}