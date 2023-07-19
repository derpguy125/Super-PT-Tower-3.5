
// Go to door

if state == "enterdoor"
	state = "normal"

switch targetDoor {
	case "A":
		move_to_door(obj_doorA);
		break;
	case "B":
		move_to_door(obj_doorB);
		break;
	case "C":
		move_to_door(obj_doorC);
		break;
	case "D":
		move_to_door(obj_doorD);
		break;
	case "E":
		move_to_door(obj_doorE);
		break;
	case "F":
		move_to_door(obj_doorF);
		break;
	
}

hallway = false;
vhallway = false;