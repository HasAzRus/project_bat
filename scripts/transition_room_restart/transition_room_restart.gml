function transition_room_restart()
{
	var transition_helper = instance_find(o_transition_helper, 0);
	
	if(transition_helper != noone)
	{
		if(transition_helper.state != e_transition_state.none)
		{
			return;
		}
		
		with(transition_helper)
		{
			black_screen_position_x = display_get_width();
			
			state = e_transition_state.out;		
			alarm[2] = room_speed * transition_speed;
		}
	}
}