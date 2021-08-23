function restart()
{
	var player_start = instance_find(o_player_start, 0);
	
	global.local_player.phy_position_x = player_start.x;
	global.local_player.phy_position_y = player_start.y;
	
	with(global.local_player)
	{
		event_user(2);
	}
	
	//with(global.game_mode)
	//{
	//	run_timer_for_condition(self);
	//}
}