draw_rectangle_color(0, 0, 480, 270, c_black, c_black, c_black, c_black, 0);

draw_set_font(global.font);
draw_set_halign(fa_center);
draw_set_color(c_white);

draw_text(240,50, "WAIT!\nAre you sure you want to erase your\nsave? It canNOT be recovered\nlater!");

if (optionselected == 0)
    draw_text_colour(200, 200, "NO", c_white, c_white, c_white, c_white, 1)
else
    draw_text_colour(200, 200, "NO", c_white, c_white, c_white, c_white, 0.5)
if (optionselected == 1)
    draw_text_colour(280, 200, "YES", c_red, c_red, c_red, c_red, 1)
else
    draw_text_colour(280, 200, "YES", c_white, c_white, c_white, c_white, 0.5)
