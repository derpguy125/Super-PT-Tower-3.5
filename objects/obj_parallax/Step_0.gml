var cam = view_get_camera(view_camera[0])

var _cam_x = camera_get_view_x(cam)
var _cam_y = camera_get_view_y(cam)
layer_x("Backgrounds_1", (_cam_x * 0.25))
layer_y("Backgrounds_1", (_cam_y * 0.25))
layer_x("Backgrounds_2", (_cam_x * 0.15))
layer_y("Backgrounds_2", (_cam_y * 0.15))
layer_x("Backgrounds_3", (_cam_x * 0.05))
layer_y("Backgrounds_3", (_cam_y * 0.05))
layer_x("Backgrounds_Ground1", (_cam_x * 0.25))
layer_x("Backgrounds_Ground2", (_cam_x * 0.25))