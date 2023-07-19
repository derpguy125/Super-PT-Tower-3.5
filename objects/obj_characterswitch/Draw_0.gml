draw_rectangle_color(0,0,480,270,c_dkgray,c_dkgrey,c_ltgrey,c_ltgrey,0);

for (i = 0; i < 31; i++) {
	pal_swap_set(spr_noiapalette,i,0);
	var col = c_white;
	if pal_selected != i then col = c_dkgrey;
	draw_sprite_ext(spr_noia_idle,index,(240+xx) + (i * 64),100,1,1,0,col,1)
	shader_reset();
}

draw_set_font(global.font);
draw_set_halign(fa_center);
draw_set_color(c_black);

get_pal_vars();

draw_text(240,25,pal_name);
draw_text(240,140,pal_desc);

draw_set_font(global.font2);
draw_text(240+irandom_range(-1,1),240+irandom_range(-1,1),"< >: Select Palette, Jump: Confirm, Grab: Cancel");