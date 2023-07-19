// This is a script
function enemy_fear(){
	fear_timer --;
	if fear_timer <= 0 then {
		state = "move";	
	}
}