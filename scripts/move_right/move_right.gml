function move_right()
{
	if(global.game_mode.is_pause)
	{
		return;
	}
	
	jump(1);
}