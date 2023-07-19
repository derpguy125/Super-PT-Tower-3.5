// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_bump(){
	bumptimer --;
	if ground then {
		hsp = 0;
		if bumptimer <= 0 then state = "normal";
	}
}