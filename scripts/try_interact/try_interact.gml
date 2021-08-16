function try_interact()
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
}