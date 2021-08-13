/// @description Pause Changed
if(is_pause)
{
	last_timer = alarm[0];
	alarm[0] = -1;
}
else
{
	alarm[0] = last_timer;
}

with(global.local_player)
{
	event_user(0);
}

with(global.ui)
{
	event_user(0);
}