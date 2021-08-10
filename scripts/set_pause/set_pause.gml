function set_pause(value)
{
	global.game_mode.is_pause = value;
	
	with(global.game_mode)
	{
		event_user(0);
	}
}