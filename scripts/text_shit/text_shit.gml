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

function queue_message(str) {
	if ds_queue_empty(obj_tv.msg_store) and obj_tv.message == "" then {
		obj_tv.message = str;
		obj_tv.showtext = 1;
		obj_tv.promptx = obj_tv.promptxstart;
	} else {
		ds_queue_enqueue(obj_tv.msg_store, str);	
	}
}