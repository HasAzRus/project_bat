if(phy_speed_y > 0)
{
	with(other)
	{
		event_user(1);
	}
}
	
repeat(3)
{
	instance_create_layer(x, y, "Instances", choose(o_trap_stone_crashed, o_trap_stone_crashed2, o_trap_stone_crashed3));
}
	
repeat(5)
{
	var ddir = irandom(360);
	var dx = lengthdir_x(2, ddir);
	var dy = lengthdir_y(2, ddir);
			
	dust = instance_create_layer(x + dx, y + 5 + dy, "Instances", o_dust);
}
	
instance_destroy();