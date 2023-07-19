/// @description Player Movement

get_input();

switch state {
	case "normal":
		player_normal();
		break;
	case "jump":
		player_jump();
		break;
	case "crouch":
		player_crouch();
		break;
	case "crouchjump":
		player_crouchjump();
		break;
	case "mach1":
		player_mach1();
		break;
	case "mach2":
		player_mach2();
		break;
	case "mach3":
		player_mach3();
		break;
	case "machslide":
		player_machslide();
		break;
	case "machroll":
		player_machroll();
		break;
	case "machdive":
		player_machdive();
		break;
	case "machend":
		player_machend();
		break;
	case "bump":
		player_bump();
		break;
	case "climbwall":
		player_climbwall();
		break;
	case "ceilinghit":
		player_ceilinghit();
		break;
	case "enterdoor":
		player_enterdoor();
		break;
	case "taunt":
		player_taunt();
		break;
		
	default:
		player_nothing();
		break;
}

collide();