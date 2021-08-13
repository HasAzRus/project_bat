function set_condition_state(value, condition_instance)
{
	if(global.game_mode.is_won)
	{
		return;
	}
	
	with(condition_instance)
	{
		state = value;
	}
}