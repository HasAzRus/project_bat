repeat(3)
{
	instance_create_layer(x, y, "Instances", choose(o_trap_stone_crashed, o_trap_stone_crashed2, o_trap_stone_crashed3));
}
	
create_dust(5);