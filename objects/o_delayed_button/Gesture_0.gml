/// @description Tap
if(is_active && !clicked)
{
	clicked = true;
	
	scale_relative(clicked_scale_amount);
	alarm[0] = clicked_unscale_alarm;
	
	event_user(1);
}