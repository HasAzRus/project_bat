/// @description Collect Gem
var allgems_condition = instance_find(o_allgems_condition, 0);

if(allgems_condition.allgems_count <= gems + red_gems)
{
	set_condition_state(e_condition_state.done, allgems_condition);
}