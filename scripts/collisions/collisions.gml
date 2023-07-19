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
	// horiz collision
	// Vertical
	repeat(abs(vsp)) {
	    if !solids(x, y + sign(vsp))
	        y += sign(vsp); 
	    else {
	        vsp = 0;
	        break;
	    }
	}

	// Horizontal
	repeat(abs(hsp)) {
	    // Move up slope
	    if solids(x + sign(hsp), y) && !solids(x + sign(hsp), y - 1)
			y--
    
	    // Move down slope
	    if !solids(x + sign(hsp), y) && !solids(x + sign(hsp), y + 1) && solids(x + sign(hsp), y + 2)
	        y++;

	    if !solids(x + sign(hsp), y)
	        x += sign(hsp); 
	    else {
	        hsp = 0;
	        break;
	    }
	}
	
	if vsp < 16 // gravity cap
	    vsp += grv;
	
	if (solids(x,y+1)) or (!place_meeting(x,y,obj_platform) && place_meeting(x,y+1,obj_platform)) {
	    ground = true;
	} else ground = false;	
}