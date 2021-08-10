function jump_amount(axis, amount)
{
	if(stamina_state == e_stamina_state.not_enough)
	{
		return;
	}
	
	phy_speed_y = -jump_height * amount;
	phy_speed_x = jump_distance * axis * amount;
	
	image_xscale = axis;
	
	phy_rotation = 10 * axis;
	
	is_falling = false;
	last_grounded_y = y;
}