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
		if(stamina > 20)
		{
			stamina -= 0.2;
		}
		else
		{
			stamina -= 0.05;
		}
		
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
	
	if(phy_speed_y > 0)
	{
		if(!is_falling)
		{
			is_falling = true;
			
			last_height_assigned = false;
			last_fall_y = y;
		}
	}
}
else
{
	is_falling = false;
	
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
	
	if(!last_height_assigned)
	{
		last_height_assigned = true;
		
		last_height = abs(y - last_fall_y);
		show_debug_message(last_height);
	}
	
	if(last_height > 100)
	{
		event_user(1);
	}
	
	if(last_height > 15)
	{
		repeat(5)
		{
			var ddir = irandom(360);
			var dx = lengthdir_x(2, ddir);
			var dy = lengthdir_y(2, ddir);
			
			dust = instance_create_layer(x + dx, y + 5 + dy, "Instances", o_dust);
		}
		
		camera_shake(1, 10);
	}
	
	if(last_height != 0)
	{
		last_height = 0;
	}
}

if(place_meeting(x, y + 5, o_invisible_block))
{
	if(!sit_on_the_ground)
	{
		sit_on_the_ground = true;
		
		var noground_condition = instance_nearest(x, y, o_noground_condition);
		set_condition_state(e_condition_state.failed, noground_condition);
	}
}