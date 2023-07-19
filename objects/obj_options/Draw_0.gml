draw_set_color(c_black);

draw_rectangle(0,0,480,270,0);

draw_set_color(c_white);


draw_set_halign(fa_center);
draw_text(240,32,"OPTIONS");

draw_set_halign(fa_left);

var fulltext = "OFF";
var resotext = "960x540";

if optionsaved_fullscreen == 0
	fulltext = "OFF";
if optionsaved_fullscreen == 1
	fulltext = "ON";

if optionsaved_resolution == 0
	resotext = "480x270";
if optionsaved_resolution == 1
	resotext = "960x540";
if optionsaved_resolution == 2
	resotext = "1920x1080";

draw_text(64, 96, "FULLSCREEN" + "\n" + "RESOLUTION" + "\nKEY CONFIG");

if global.option_fullscreen != optionsaved_fullscreen
	draw_set_color(c_gray);
else draw_set_color(c_white);
draw_text(350, 96, fulltext);

if global.option_resolution != optionsaved_resolution
	draw_set_color(c_gray);
else draw_set_color(c_white);
draw_text(350,120,resotext);

draw_set_color(c_white);

draw_text(32, 96 + (selection * 24), ">");