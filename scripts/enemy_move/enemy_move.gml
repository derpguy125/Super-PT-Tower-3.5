// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemy_move(){
	sprite_index = spr_move;
	
	hsp = movespeed * dir;
	
	movespeed = 1;
	
	if (solids(x+dir,y) && !place_meeting(x + dir, y, obj_slope)) or !solids(x+(dir * 8),y+1) 
		dir = -dir;
}