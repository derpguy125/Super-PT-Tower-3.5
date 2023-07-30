// This is a script
function get_text_proportional(str) {
	var b, textx;
	textx = 0
	
	for (i = 0; i < string_length(str); i ++) {
		var charw = string_width(string_char_at(str,i));
		b[i] = textx + charw;
		textx += charw;
	}
	
	return b;
}