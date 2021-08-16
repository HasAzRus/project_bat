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
	if(!is_grabbing && can_interaction)
	{
		var nearest_interactive = instance_nearest(x, y, o_interactive);

		if(nearest_interactive != noone && nearest_interactive.selected && distance_to_object(nearest_interactive) < interactive_distance)
		{
			with(nearest_interactive)
			{
				event_user(0);
			}
		}
	}
	else
	{
		with(grab_interactive)
		{
			event_user(1);
		}
		
		is_grabbing = false;
		grab_interactive = noone;
	}
	
	if(interact_button_clicked == 0)
	{
		interact_button_clicked = 1;
		alarm[3] = 10;
	}
}

//tap_trail = instance_create_layer(tap_x, tap_y, "Instances", o_tap_trail);
