// bla bla bla
frame ++;
if frame > 359 frame = 0;

// Roomnames
if visible {
	if showroomname {
		if yi > 242 {
			yi -= 4;	
		} else yi = 242
	} else {
		if yi < 286 then {
			yi += 0.5;	
		} else yi = 286
	}
	
	if obj_noia.y <= 72 then {
		if yi2 > -96 {
			yi2 -= 8;	
		} else yi2 = -96
	} else {
		if yi2 < 0 then {
			yi2 += 8;	
		} else yi2 = 0
	}

	// Update TV Sprite
	tvindex += 0.25;

	if tvindex >= sprite_get_number(tvsprite) {
		switch tvsprite {
			case spr_tv_noia_normal:
				var funny = irandom(8);
				if funny == 1 then tvsprite = spr_tv_noia_funny1;
				if funny == 2 then tvsprite = spr_tv_noia_funny2;
				break;
		
			case spr_tv_noia_funny1:
			case spr_tv_noia_funny2:
				tvsprite = spr_tv_noia_normal;
				break;
		}
	
		tvindex = 0;
	}
}