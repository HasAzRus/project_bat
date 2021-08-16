function transition_room_goto(room_index)
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
			
			current_room_index_to_transition = room_index;		
			state = e_transition_state.out;		
			
			alarm[1] = room_speed * transition_speed;
		}
	}
}