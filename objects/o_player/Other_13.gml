/// @description Collect Gem
var allgems_count = instance_number(o_gem);

if(allgems_count == 0)
{
	var allgems_condition = instance_find(o_allgems_condition, 0);
	set_condition_state(e_condition_state.done, allgems_condition);
}