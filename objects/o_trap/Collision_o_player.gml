/// @description Collision By Player
if(closed)
{
	return;
}

with(other)
{
	event_user(1);
}

sprite_index = spr_trap_closed;

physics_apply_local_force(0, 0, 0, 15);

closed = true;