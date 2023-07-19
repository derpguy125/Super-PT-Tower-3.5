/// @description Insert description here
// You can write your code in this editor

if obj_noia.state = "mach3" then {
	with instance_create(x,y,obj_enemydead) {
		hsp = 4 * -other.dir;
		depth = -99;
		sprite_index = other.spr_dead;
		image_speed = 0;
		image_index = irandom(sprite_get_number(sprite_index));
		image_xscale = other.dir;
	}
	create_shake(4);
	sound(sfx_killenemy);
	instance_destroy();
}