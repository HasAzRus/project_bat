function create_dust(count)
{
	repeat(count)
	{
		var ddir = irandom(360);
		var dx = lengthdir_x(2, ddir);
		var dy = lengthdir_y(2, ddir);
			
		dust = instance_create_layer(x + dx, y + 5 + dy, "Instances", o_dust);
	}
}