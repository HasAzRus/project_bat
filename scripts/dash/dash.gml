function dash(axis)
{
	if(stamina - dash_using_stamina_amount < 0)
	{
		return;
	}
	
	stamina -= dash_using_stamina_amount;
	jump_amount(axis, 1.5);
}