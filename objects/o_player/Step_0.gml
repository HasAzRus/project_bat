/// @description Player Update
if(phy_speed == 0)
{
	if(sprite_index != spr_player_stand)
	{
		set_sprite_index_with_speed(spr_player_end_fly, 0.5);
	}
}
else
{
	if(sprite_index != spr_player_fly)
	{
		set_sprite_index_with_speed(spr_player_start_fly, 1);
	}
}

if(!is_grounded)
{
	if(stamina > 0) 
	{
		stamina -= 0.4;
		
		if(stamina_state != e_stamina_state.none)
		{
			stamina_state = e_stamina_state.none;
		}
	}
	else
	{
		if(stamina_state != e_stamina_state.not_enough)
		{
			stamina_state = e_stamina_state.not_enough;
		}
	}
}
else
{
	if(stamina < 100)
	{
		stamina += 0.2;
		
		if(stamina_state != e_stamina_state.none)
		{
			stamina_state = e_stamina_state.none;
		}
	}
	else
	{
		if(stamina_state != e_stamina_state.full)
		{	
			stamina_state = e_stamina_state.full;
		}
	}
}