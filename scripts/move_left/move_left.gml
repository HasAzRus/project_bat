function move_left()
{
	if(global.game_mode.is_pause)
	{
		return;
	}
	
	jump(-1);
}