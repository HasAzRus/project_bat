/// @description Camera Initializing

target = noone;

vcamera = view_camera[0];

vcamera_width_half = camera_get_view_width(vcamera) / 2;
vcamera_height_half = camera_get_view_height(vcamera) / 2;

shake_amount = 1;
shake_enabled = true;

shake_x = 0;
shake_y = 0;