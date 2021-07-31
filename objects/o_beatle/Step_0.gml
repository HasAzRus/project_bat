/// @description Beatle Update
if(player == noone)
{
	player = instance_nearest(x, y, o_player);
}
else
{
	if(distance_to_object(player) > fear_by_player_distance)
	{
		phy_speed_x = lengthdir_x(fly_default_speed, dir);
		phy_speed_y = lengthdir_y(fly_default_speed, dir);
	}
	else
	{
		var direction_to_player = -point_direction(x, y, player.x, player.y)
		
		if(collision_line(x, y, lengthdir_x(1, direction_to_player), lengthdir_y(1, direction_to_player), o_block, false, true))
		{
			direction_to_player -= 10;
		}
		
		phy_speed_x = lengthdir_x(fly_fear_by_player_speed, direction_to_player);
		phy_speed_y = lengthdir_y(fly_fear_by_player_speed, direction_to_player);
	}
}

