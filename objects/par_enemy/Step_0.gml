/// @description Insert description here
// You can write your code in this editor

switch state {
	case "move":
		enemy_move();
		break;
	case "fear":
		enemy_fear();
		break;
}

collide();