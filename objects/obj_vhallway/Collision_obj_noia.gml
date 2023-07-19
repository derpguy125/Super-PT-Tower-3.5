with obj_noia {
		targetRoom = other.targetRoom;
		targetDoor = other.targetDoor;
		
		vhallway = true;
		vhallwaydir = sign(other.image_yscale);
		
		instance_create(0,0,obj_fadeout);
}