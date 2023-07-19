function move_to_door(door_object){
	if instance_exists(door_object) {
		if hallway then  x = door_object.x + (hallwaydir  * 48);
		else			 x = door_object.x + 8;
			
		if vhallway then y = door_object.y + (vhallwaydir * 48);
		else			 y = door_object.y - 16;
	}
}