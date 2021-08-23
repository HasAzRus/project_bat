repeat(irandom_range(1, 3))
{
	instance_create_layer(irandom_range(0, room_width), -10, "Instances", o_falling_leave);
}

alarm[0] = room_speed * 4;