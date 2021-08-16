/// @description Collision By Player
instance_destroy();

with(other)
{
	gems += 1;
	
	event_user(3);
}

instance_create_layer(x, y, "Instances", o_gem_collected_message);