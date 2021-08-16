for(var i = 0; i < array_length(rope_elements); i++)
{
	var rope = rope_elements[i];
	
	with(rope)
	{
		physics_apply_local_force(0, 0, irandom_range(-10, 10), 0);
	}
}	