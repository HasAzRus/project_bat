function run_timer_for_condition(gamemode)
{
	var time_condition = instance_find(o_time_condition, 0);

	if(time_condition != noone)
	{
		with(gamemode)
		{
			max_timer_seconds = time_condition.condition_timer_seconds;
			alarm[0] = room_speed * max_timer_seconds;
		}
	}
}