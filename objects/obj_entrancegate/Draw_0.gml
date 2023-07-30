/// @description placeholder please add description

draw_self();


draw_set_font(global.font2);
draw_set_halign(fa_center);

if place_meeting(x,y,obj_noia) {
	var lvlStringWidth = string_width(levelname);
	draw_set_color(c_black);
	draw_rectangle(x - ((lvlStringWidth / 2) + 8),y - 38,x + ((lvlStringWidth / 2) + 8),y - 10,0);
	draw_set_color(c_white);
	draw_rectangle(x - ((lvlStringWidth / 2) + 4),y - 34,x + ((lvlStringWidth / 2) + 4),y - 14,0);
	draw_set_color(c_black);
	draw_text(x + irandom_range(-1,1),y - 32 + irandom_range(-1,1),levelname);
}