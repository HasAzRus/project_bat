/// @description Died
control_to_player = false;
died = true;

with(global.ui)
{
	event_user(1);
}

var nodeath_condition = instance_find(o_nodeath_condition, 0);
set_condition_state(e_condition_state.failed, nodeath_condition);