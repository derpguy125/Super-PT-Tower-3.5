// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function solids(xx,yy) {
	var old_x = x
	var old_y = y
	x = xx
	y = yy
	if place_meeting(x, y, obj_solid)
	{
	    x = old_x
	    y = old_y
	    return 1;
	}
	if ((y > old_y) && (((bbox_bottom % 8) == 0) && ((!place_meeting(x, old_y, obj_platform)) && place_meeting(x, y, obj_platform))))
	{
	    x = old_x
	    y = old_y
	    return 1;
	}
	var slope = instance_place(x, y, obj_slope)
	if slope
	{
	    with (slope)
	    {
	        var object_side = 0
	        var slope_start = 0
	        var slope_end = 0
	        if (image_xscale > 0)
	        {
	            object_side = other.bbox_right
	            slope_start = bbox_bottom
	            slope_end = bbox_top
	        }
	        else
	        {
	            object_side = other.bbox_left
	            slope_start = bbox_top
	            slope_end = bbox_bottom
	        }
	        var m = ((sign(image_xscale) * (bbox_bottom - bbox_top)) / (bbox_right - bbox_left))
	        slope = (slope_start - round((m * (object_side - bbox_left))))
	        if (other.bbox_bottom >= slope)
	        {
	            other.x = old_x
	            other.y = old_y
	            return 1;
	        }
	    }
	}
	x = old_x
	y = old_y
	return 0;
}

function collide() {
	// code rewritten from my other game SRB2C
	ground = false;
	
	// horizontal collisions
	if solids(x+hsp,y) {
		// move up slope
		var yplus = 0;
		while (solids(x+hsp,y-yplus) && yplus <= abs(hsp)) yplus += 1;
		
		//actually do the collisions
		if solids(x+hsp,y-yplus) {
			while !solids(x+sign(hsp),y) x += sign(hsp);	
			hsp = 0;
		} else y -= yplus;
	}
	x += hsp;
	
	// move down slope
	if !solids(x,y) && vsp >= 0 && solids(x,y+2+abs(hsp)) {
		while !solids(x,y+1) y ++;	
	}
	
	// vertical collisions
	if solids(x,y+vsp) {
		while !solids(x,y+sign(vsp))
			y += sign(vsp);
		vsp = 0;
	}
	y += vsp;
	
	// one way solid collision
	
	if place_meeting(x,y+1,obj_platform) && vsp > 0 {
		var wall = instance_place(x,y+1,obj_platform);
		if vsp > 0 {
			if bbox_bottom > wall.bbox_top && (bbox_top < wall.bbox_top - ((bbox_bottom - bbox_top) - (abs(vsp) + 1))) {
				vsp = 0;
				y += wall.bbox_top - bbox_bottom;
			}
		}
	}
	
	// gravity and groundination
	
	if vsp < 16 then vsp += grv;
	
	ground |= solids(x, y+1);
	ground |= ((!(place_meeting(x,y,obj_platform))) && place_meeting(x,y+1,obj_platform));
}