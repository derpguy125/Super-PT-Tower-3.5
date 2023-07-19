// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemy_move(){
	sprite_index = spr_move;
	
	hsp = movespeed * dir;
	
	movespeed = 1;
	
	if solids(x + dir, y) || place_meeting(x+hsp,y,obj_hallway) {
		if !place_meeting(x+dir,y,obj_slope)
			dir *= -1;
	}
	
	if !solids(x+(7 * dir),y+15) || place_meeting(x+(7 * dir),y+15,obj_platform) {
		if movespeed > 0 then dir *= -1;
	}
		
	if collision_rectangle(x,y-32,x+(256*-obj_noia.dir),y+32,obj_noia,false,true) {
		if obj_noia.state == "mach3" then {
			state = "fear";
			sprite_index = spr_fear;
			dir = -obj_noia.dir;
			vsp = -2;
			hsp = 0;
			movespeed = 0;
			fear_timer = 60;
			var rand = irandom(16)
			if rand = 0 then
				sound(sfx_enemyscream);
		}
	}
}