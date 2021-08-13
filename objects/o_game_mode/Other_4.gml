/// @description Room Start
game_conditions = array_create(instance_number(o_condition));

for(var i = 0; i < array_length(game_conditions); i++)
{
	game_conditions[i] = instance_find(o_condition, i);
}

var time_condition = instance_find(o_time_condition, 0);

if(time_condition != noone)
{
	max_timer_seconds = time_condition.condition_timer_seconds;
	alarm[0] = room_speed * max_timer_seconds;
}