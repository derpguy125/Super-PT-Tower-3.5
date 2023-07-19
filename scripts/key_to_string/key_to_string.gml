function key_to_string(key){
	if( key > 48 && key < 91 )
		return chr(key);
		
		
	switch(key) {
		case -1: return "NONE";
		case 8: return "BACKSPACE";
		case 9: return "TAB";
		case 13: return "ENTER";
		case 16: return "SHIFT";
		case 17: return "CTRL";
		case 18: return "ALT";
		case 19: return "PAUSEBREAK";
		case 20: return "CAPS";
		case 27: return "ESCAPE";
		case 33: return "PAGE UP";
		case 34: return "PAGE DOWN";
		case 35: return "END";
		case 36: return "HOME";
		case 37: return "LEFT ARROW";
		case 38: return "UP ARROW";
		case 39: return "RIGHT ARROW";
		case 40: return "DOWN ARROW";
		case 45: return "INSERT";
		case 46: return "DELETE";
		case 96: return "NUMPAD 0";
		case 97: return "NUMPAD 1";
		case 98: return "NUMPAD 2";
		case 99: return "NUMPAD 3";
		case 100: return "NUMPAD 4";
		case 101: return "NUMPAD 5";
		case 102: return "NUMPAD 6";
		case 103: return "NUMPAD 7";
		case 104: return "NUMPAD 8";
		case 105: return "NUMPAD 9";
		case 106: return "NUMPAD TIMES";
		case 107: return "NUMPAD PLUS";
		case 109: return "NUMPAD MINUS";
		case 110: return "NUMPAD .";
		case 111: return "NUMPAD SLASH";
		case 112: return "F1";
		case 113: return "F2";
		case 114: return "F3";
		case 115: return "F4";
		case 116: return "F5";
		case 117: return "F6";
		case 118: return "F7";
		case 119: return "F8";
		case 120: return "F9";
		case 121: return "F10";
		case 122: return "F11";
		case 123: return "F12";
		case 144: return "NUM LOCK";
		case 145: return "SCROLL LOCK";
		case 186: return "SEMICOLON";
		case 187: return "EQUALS";
		case 188: return "COMMA";
		case 189: return "MINUS";
		case 190: return ".";
		case 191: return "BACKSLASH";
		case 192: return "BACKTICK";
		case 219: return "SLASH";
		case 220: return "LEFT BRACKET";
		case 221: return "RIGHT BRACKET";
		case 222: return "APOSTROPHE";
	}
}