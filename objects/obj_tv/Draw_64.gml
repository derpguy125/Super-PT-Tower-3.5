// draw roomname
draw_set_color(make_color_rgb($20,$00,$33));

draw_set_font(global.font2);

draw_sprite_stretched(spr_roomname_bg, 0, 240 - (max((string_width(global.roomname) + 89),89) / 2) - 24, yi - 16, max(string_width(global.roomname),89) + 89,48);
draw_text(240 + irandom_range(-1,1),floor(yi),global.roomname);

// draw scorekeeping
draw_set_color(c_white)
draw_set_font(global.scorefont);
draw_set_halign(fa_center);



draw_sprite_ext(spr_scorekeeper_container,0,56,26 + round(sin(degtorad(((frame + 20) * 4))) * 3),1,1,
				(sin(degtorad(((frame) * 2))) * 5),c_white,1);

for (i = 0; i < string_length(string(global.collect)); i ++) {
	draw_text(64 + ((i * 11) - (string_width(string(global.collect)) / 2)),		// numbers width thing
			  24 + round(sin(degtorad((frame * 2) + (i*45))) * 2)				// individual nums waving up and down
			     + round(sin(degtorad((frame * 4)))          * 2),				// the entire set also waving up and down
			  string_char_at(string(global.collect),i+1));						// actually draw the numbers
}

// draw tv shit


pal_swap_set(spr_noiapalette,global.pal,0);
draw_sprite(tvsprite,tvindex,424,-8 + yi2);
shader_reset();