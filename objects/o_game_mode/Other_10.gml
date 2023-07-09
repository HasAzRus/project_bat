/// @description Pause Changed
if(is_pause)
{
	last_timer = alarm[0];
	alarm[0] = -1;
}
else
{
	alarm[0] = last_timer;
}

with(global.local_player)
{
	event_user(0);
}

with(global.ui)
{
	event_user(0);
}

physics_pause_enable(is_pause);

if(is_pause)
{
	instance_deactivate_layer("Instances");
}
else
{
	instance_activate_layer("Instances");
}