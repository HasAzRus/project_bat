function jump(axis)
{
	if(stamina_state == e_stamina_state.not_enough)
	{
		return;
	}
	
	phy_speed_y = -jump_height;
	phy_speed_x = jump_distance * axis;
	
	image_xscale = axis;
	
	phy_rotation = 10 * axis;
	
	last_height += jump_height;
}