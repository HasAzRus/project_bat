/// @description Respawned
phy_active = true;
visible = true;

control_to_player = true;
died = false;

stamina = 100;

last_height = 0;
last_fall_y = 0;
last_height_assigned = true;

with(global.ui)
{
	event_user(2);
}