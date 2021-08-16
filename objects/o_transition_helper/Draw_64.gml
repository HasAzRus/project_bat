/// @description Draw GUI
if(state != e_transition_state.none)
{
	draw_set_alpha(1);
	draw_rectangle_color(black_screen_position_x, 0, black_screen_position_x + display_get_width(), display_get_height(), c_black, c_black, c_black, c_black, false);
}