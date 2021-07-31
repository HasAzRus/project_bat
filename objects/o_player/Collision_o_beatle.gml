/// @description Collision By Beatle
var stamina_plus = irandom_range(40, 50);

if(stamina + stamina_plus <= 100)
{
	stamina += stamina_plus;
}

instance_destroy(other);