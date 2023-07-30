/// @description placeholder please add description

draw_self();


draw_set_font(global.font2);
draw_set_halign(fa_left);

if place_meeting(x,y,obj_noia) {
	// draw level title
	// get variables for the thing
	var lvlStringWidth = string_width(levelname);
	var txtWidth = get_text_proportional(levelname);
	
	siner ++;
	
	// draw background thing
	draw_set_color(c_black);
	draw_rectangle(x - ((lvlStringWidth / 2) + 8),y - 38,x + ((lvlStringWidth / 2) + 8),y - 10,0);
	draw_set_color(c_white);
	draw_rectangle(x - ((lvlStringWidth / 2) + 4),y - 34,x + ((lvlStringWidth / 2) + 4),y - 14,0);
	
	// draw the text
	draw_set_color(c_black);
	
	for (i = 0; i < string_length(levelname); i++) {
		draw_text((	x - ((lvlStringWidth / 2) + 8)) + txtWidth[i],
					y - 32 + (sin(degtorad((siner * 2) + (i * 30))) * 3),
					string_char_at(levelname, i+1));
	};
}