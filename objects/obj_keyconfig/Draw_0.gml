draw_set_font(global.font);
draw_set_halign(fa_left);

draw_rectangle_color(0, 0, 480, 270, c_black, c_black, c_black, c_black, 0)
if (key_select == -1)
    draw_text_colour(50, 0, "BACK", c_white, c_white, c_white, c_white, 1)
else
    draw_text_colour(50, 0, "BACK", c_white, c_white, c_white, c_white, 0.5)
if (key_select == 0)
    draw_text_colour(100, 25, "UP", c_white, c_white, c_white, c_white, 1)
else
    draw_text_colour(100, 25, "UP", c_white, c_white, c_white, c_white, 0.5)
draw_text(290, 25, key_to_string(global.key_up))
if (key_select == 1)
    draw_text_colour(100, 50, "DOWN", c_white, c_white, c_white, c_white, 1)
else
    draw_text_colour(100, 50, "DOWN", c_white, c_white, c_white, c_white, 0.5)
draw_text(290, 50, key_to_string(global.key_down))
if (key_select == 2)
    draw_text_colour(100, 75, "RIGHT", c_white, c_white, c_white, c_white, 1)
else
    draw_text_colour(100, 75, "RIGHT", c_white, c_white, c_white, c_white, 0.5)
draw_text(290, 75, key_to_string(global.key_right))
if (key_select == 3)
    draw_text_colour(100, 100, "LEFT", c_white, c_white, c_white, c_white, 1)
else
    draw_text_colour(100, 100, "LEFT", c_white, c_white, c_white, c_white, 0.5)
draw_text(290, 100, key_to_string(global.key_left))
if (key_select == 4)
    draw_text_colour(100, 125, "JUMP", c_white, c_white, c_white, c_white, 1)
else
    draw_text_colour(100, 125, "JUMP", c_white, c_white, c_white, c_white, 0.5)
draw_text(290, 125, key_to_string(global.key_jump))
if (key_select == 5)
    draw_text_colour(100, 150, "POKE", c_white, c_white, c_white, c_white, 1)
else
    draw_text_colour(100, 150, "POKE", c_white, c_white, c_white, c_white, 0.5)
draw_text(290, 150, key_to_string(global.key_grab))
if (key_select == 6)
    draw_text_colour(100, 175, "DASH", c_white, c_white, c_white, c_white, 1)
else
    draw_text_colour(100, 175, "DASH", c_white, c_white, c_white, c_white, 0.5)
draw_text(290, 175, key_to_string(global.key_dash))
if (key_select == 7)
    draw_text_colour(100, 200, "TAUNT", c_white, c_white, c_white, c_white, 1)
else
    draw_text_colour(100, 200, "TAUNT", c_white, c_white, c_white, c_white, 0.5)
draw_text(290, 200, key_to_string(global.key_taunt))

if (key_select == 8)
    draw_text_colour(100, 225, "START", c_white, c_white, c_white, c_white, 1)
else
    draw_text_colour(100, 225, "START", c_white, c_white, c_white, c_white, 0.5)
draw_text(290, 225, key_to_string(global.key_start))