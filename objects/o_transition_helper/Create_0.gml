/// @description Transition Initializing
black_screen_position_x = 0;

enum e_transition_state
{
	none,
	in,
	out
}

state = e_transition_state.none;

current_room_index_to_transition = -1;
transition_speed = 0.4;

depth = -1000;