/// @description Global Tap
if(!control_to_player)
{
	return;
}

var tap_x = event_data[? "posX"];

var axis = 0;

var vcamera = view_camera[0];

var vcamera_x = camera_get_view_x(vcamera);

var vcamera_width_half = camera_get_view_width(vcamera) / 2;

var vcamera_width_half_left_center = vcamera_x + vcamera_width_half / 2;

var vcamera_center = vcamera_x + vcamera_width_half;

if(tap_x < vcamera_center)
{
	if(tap_x < vcamera_width_half_left_center)
	{
		axis = -1;
	}
	else
	{
		axis = 1;
	}
	
	if(axis == -1)
	{
		if(left_button_clicked == 0)
		{
			left_button_clicked = 1;
			alarm[2] = 10;
		}
	}
	
	if(axis == 1)
	{		
		if(right_button_clicked == 0)
		{
			right_button_clicked = 1;
			alarm[1] = 10;
		}
	}
	
	jump(axis);
}
else
{
	try_interact();
	
	if(interact_button_clicked == 0)
	{
		interact_button_clicked = 1;
		alarm[3] = 10;
	}
}

//tap_trail = instance_create_layer(tap_x, tap_y, "Instances", o_tap_trail);
