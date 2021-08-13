/// @description Win
alarm[0] = -1;

for(var i = 0; i < array_length(game_conditions); i++)
{
	if(game_conditions[i].win_active && game_conditions[i].state == e_condition_state.none)
	{
		set_condition_state( e_condition_state.done, game_conditions[i]);
	}
	else if(!game_conditions[i].win_active && game_conditions[i].state == e_condition_state.none)
	{
		set_condition_state( e_condition_state.failed, game_conditions[i]);
	}
}