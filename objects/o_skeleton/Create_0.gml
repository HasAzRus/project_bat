event_inherited();

start_x = phy_position_x;
start_y = phy_position_y;

target = noone;

distance_to_player = 60;
distance_to_attack = 55;

can_attack = true;

phy_fixed_rotation = true;

enum e_skeleton_state
{
	sleep,
	wait_to_attack,
	attack
}

state = e_skeleton_state.sleep;