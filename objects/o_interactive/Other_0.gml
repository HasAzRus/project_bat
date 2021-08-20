if(destroy_on_collision_by_killzone)
{
	instance_destroy();
}

if(!killed)
{
	killed = true;
	
	alarm[0] = 20;
}