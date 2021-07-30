/// @description Global Tap
var tap_x = event_data[? "posX"];
var axis = 0;

var vcamera = view_camera[0];

var vcamera_x = camera_get_view_x(vcamera);
var vcamera_width_half = camera_get_view_width(vcamera) / 2;

if(tap_x < vcamera_x + vcamera_width_half)
{
	axis = -1;
}
else
{
	axis = 1;
}

jump(axis);