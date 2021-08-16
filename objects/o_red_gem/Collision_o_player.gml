/// @description Collision By Player
instance_destroy();

with(other)
{
	red_gems += 1;
	
	event_user(3);
}

instance_create_layer(x, y, "Instances", o_red_gem_collected_message);