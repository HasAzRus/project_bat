/// @description Died
control_to_player = false;
died = true;

phy_position_x = start_position_x;
phy_position_y = start_position_y;

phy_speed_x = 0;
phy_speed_y = 0;

visible = false;

with(global.ui)
{
	event_user(1);
}

var nodeath_condition = instance_find(o_nodeath_condition, 0);
set_condition_state(e_condition_state.failed, nodeath_condition);

with(global.game_mode)
{
	event_user(2);
}

instance_create_layer(x, y,"Instances", o_player_body);