/// @description Sprite Loop Points

if global.char = "N" then switch sprite_index {
	case spr_jump:
		image_index = 1;
		break;
	case spr_crouchjump:
		image_index = 2;
		break;
	case spr_mach1jump:
		image_index = 5;
		break;
	case spr_mach2drift:
		image_index = 4;
		break;
	case spr_mach2jump:
		image_index = 5;
		break;
	case spr_mach2end:
		image_index = 9;
		break;
	case spr_mach3drift:
		image_index = 5;
		break;
	case spr_mach3end:
		image_index = 11;
		break;
	case spr_wallbump:
		image_index = 3;
		break;
	case spr_hitceiling:
		image_index = 1;
		break;
	case spr_enterdoor:
		image_index = 2;
		break;
	case spr_entergate:
		image_index = 25;
		break;
	default:
		break;
}