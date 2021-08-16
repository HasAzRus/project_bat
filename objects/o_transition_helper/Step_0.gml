/// @description Transition Update
if(state == e_transition_state.in)
{
	black_screen_position_x = lerp(black_screen_position_x, -display_get_width(), 0.2);
}
else if(state == e_transition_state.out)
{
	black_screen_position_x = lerp(black_screen_position_x, 0, 0.2);
}