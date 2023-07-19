if (fadealpha >= 1)
{
    fadein = 1
    if instance_exists(obj_noia)
    {
		if room == Realtitlescreen {
			obj_noia.state = "normal"	
		}
        if (room != obj_noia.targetRoom)
            room_goto(obj_noia.targetRoom)
    }
}
if (fadein == 0)
    fadealpha += 0.1
else if (fadein == 1)
    fadealpha -= 0.05
if (fadein == 1 && fadealpha <= 0)
    instance_destroy()
