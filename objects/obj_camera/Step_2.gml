/// @description Insert description here
// You can write your code in this editor

var cam = view_camera[0]

if obj_noia.state == "mach2" or (obj_noia.state == "machroll" && obj_noia.movespeed == 8)
	trgShiftX = 64 * obj_noia.dir;
else if obj_noia.state == "mach3" or (obj_noia.state == "machroll" && obj_noia.movespeed >= 10)
	trgShiftX = (96 + ((obj_noia.movespeed - 10) * 2)) * obj_noia.dir;
else trgShiftX = 0;
	
camShiftX = lerp(camShiftX,trgShiftX,0.1);

var camX = clamp(round(obj_noia.x) - (480 / 2) + camShiftX,0,room_width - 480) + random_range(-shake_mag, shake_mag)
var camY = clamp(round(obj_noia.y) - (270 / 2),0,room_height- 270) + random_range(-shake_mag, shake_mag)

if shake_mag > 0 then shake_mag -= 0.5;
else shake_mag = 0;

if instance_exists(obj_noia) {
	camera_set_view_pos(cam, camX, camY)
}