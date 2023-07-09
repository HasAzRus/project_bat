function stop_interaction()
{
	if(global.game_mode.is_pause)
	{
		return;
	}
	
	with(grab_interactive)
	{
		event_user(1);
	}
		
	is_grabbing = false;
	grab_interactive = noone;
}