// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_input(){
	key_left	= keyboard_check(global.key_left)
	key_right	= keyboard_check(global.key_right)
	key_down	= keyboard_check(global.key_down)
	key_up		= keyboard_check(global.key_up)
	key_jump	= keyboard_check(global.key_jump)
	key_grab	= keyboard_check(global.key_grab)
	key_taunt	= keyboard_check(global.key_taunt)
	key_dash	= keyboard_check(global.key_dash)
	
	key_leftP	= keyboard_check_pressed(global.key_left)
	key_rightP	= keyboard_check_pressed(global.key_right)
	key_downP	= keyboard_check_pressed(global.key_down)
	key_upP		= keyboard_check_pressed(global.key_up)
	key_jumpP	= keyboard_check_pressed(global.key_jump)
	key_grabP	= keyboard_check_pressed(global.key_grab)
	key_tauntP	= keyboard_check_pressed(global.key_taunt)
	key_dashP	= keyboard_check_pressed(global.key_dash)
	
}