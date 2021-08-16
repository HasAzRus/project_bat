/// @description Room Start
game_conditions = array_create(instance_number(o_condition));

for(var i = 0; i < array_length(game_conditions); i++)
{
	game_conditions[i] = instance_find(o_condition, i);
}

run_timer_for_condition(self);