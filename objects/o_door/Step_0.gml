if(opened)
{
	phy_position_y = lerp(phy_position_y, start_y - sprite_height, 0.01);
}
else
{
	phy_position_y = lerp(phy_position_y, start_y, 0.01);
}