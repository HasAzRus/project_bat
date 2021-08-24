if(!can_receive())
{
	return;
}

instance_create_layer(x, y, "Instances", spawning_object);

event_inherited();