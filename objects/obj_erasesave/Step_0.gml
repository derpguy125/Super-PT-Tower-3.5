get_input()

if (!instance_exists(obj_keyconfig))
{
    if ((key_leftP) && optionselected > 0)
    {
        optionselected -= 1
        sound(sfx_step)
    }
    if (key_rightP && optionselected < 1)
    {
        optionselected += 1
        sound(sfx_step)
    }
}
if (optionselected == 1 && key_jumpP)
{
    file_delete("saveData.ini");
    init_inputs();
    sound(sfx_explosion);
    obj_titlescreen.selected = false;
	obj_titlescreen.buffer = 5;
	global.pal = 0;
    instance_destroy()
}
if (key_grabP || (optionselected == 0 && key_jumpP))
{
    sound(sfx_enemyprojectile)
    obj_titlescreen.selected = false
	obj_titlescreen.buffer = 5
    instance_destroy()
}
