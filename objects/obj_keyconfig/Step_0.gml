get_input()

if (selecting == -1)
{
    if (key_upP && key_select > -1)
    {
        key_select -= 1
        sound(sfx_step);
    }
    if (key_downP && key_select < 7)
    {
        key_select += 1
        sound(sfx_step);
    }
    if (key_leftP) {
        key_select = -1
        sound(sfx_step);
	}
}
if (key_jumpP && selecting == -1 && key_select == -1)
{
    sound(sfx_pephurt)
    ini_open("saveData.ini")
    ini_write_string("ControlsKeys", "up", global.key_up)
    ini_write_string("ControlsKeys", "right", global.key_right)
    ini_write_string("ControlsKeys", "left", global.key_left)
    ini_write_string("ControlsKeys", "down", global.key_down)
    ini_write_string("ControlsKeys", "jump", global.key_jump)
    ini_write_string("ControlsKeys", "grab", global.key_grab)
    ini_write_string("ControlsKeys", "dash", global.key_dash)
    ini_write_string("ControlsKeys", "taunt", global.key_taunt)
    ini_close()
    if instance_exists(obj_options) {
        obj_options.visible = true
		obj_options.buffer = 5
	}
    instance_destroy()
}
if (selecting == 0)
{
    if keyboard_check_pressed(vk_anykey)
    {
		sound(sfx_collectpizza)
        global.key_up = keyboard_key
        selecting = -1
    }
}
if (key_select == 0 && key_jumpP && selecting == -1)
{
	sound(sfx_enemyprojectile)
    selecting = key_select
    global.key_up = -1
}
if (selecting == 1)
{
    if keyboard_check_pressed(vk_anykey)
    {
		sound(sfx_collectpizza)
        global.key_down = keyboard_key
        selecting = -1
    }
}
if (key_select == 1 && key_jumpP && selecting == -1)
{
	sound(sfx_enemyprojectile)
    selecting = key_select
    global.key_down = -1
}
if (selecting == 2)
{
    if keyboard_check_pressed(vk_anykey)
    {
		sound(sfx_collectpizza)
        global.key_right = keyboard_key
        selecting = -1
    }
}
if (key_select == 2 && key_jumpP && selecting == -1)
{
	sound(sfx_enemyprojectile)
    selecting = key_select
    global.key_right = -1
}
if (selecting == 3)
{
    if keyboard_check_pressed(vk_anykey)
    {
		sound(sfx_collectpizza)
        global.key_left = keyboard_key
        selecting = -1
    }
}
if (key_select == 3 && key_jumpP && selecting == -1)
{
	sound(sfx_enemyprojectile)
    selecting = key_select
    global.key_left = -1
}
if (selecting == 4)
{
    if keyboard_check_pressed(vk_anykey)
    {
		sound(sfx_collectpizza)
        global.key_jump = keyboard_key
        selecting = -1
    }
}
if (key_select == 4 && key_jumpP && selecting == -1)
{
	sound(sfx_enemyprojectile)
    selecting = key_select
    global.key_jump = -1
}
if (selecting == 5)
{
    if keyboard_check_pressed(vk_anykey)
    {
		sound(sfx_collectpizza)
        global.key_grab = keyboard_key
        selecting = -1
    }
}
if (key_select == 5 && key_jumpP && selecting == -1)
{
	sound(sfx_enemyprojectile)
    selecting = key_select
    global.key_grab = -1
}
if (selecting == 6)
{
    if keyboard_check_pressed(vk_anykey)
    {
		sound(sfx_collectpizza)
        global.key_dash = keyboard_key
        selecting = -1
    }
}
if (key_select == 6 && key_jumpP && selecting == -1)
{
	sound(sfx_enemyprojectile)
    selecting = key_select
    global.key_dash = -1
}
if (selecting == 7)
{
    if keyboard_check_pressed(vk_anykey)
    {
		sound(sfx_collectpizza)
        global.key_taunt = keyboard_key
        selecting = -1
    }
}
if (key_select == 7 && key_jumpP && selecting == -1)
{
	sound(sfx_enemyprojectile)
    selecting = key_select
    global.key_taunt = -1
}
