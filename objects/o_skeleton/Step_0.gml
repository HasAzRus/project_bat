if(target != noone)
{
	if(state == e_skeleton_state.sleep)
	{
		if(can_attack && place_meeting(x, y + 2, all))
		{
			if(sprite_index != spr_skeleton)
			{
				sprite_index = spr_skeleton;
			}
		}
		
		if(can_attack && distance_to_object(target) < distance_to_player)
		{
			state = e_skeleton_state.wait_to_attack;
		}
	}
	else if(state == e_skeleton_state.wait_to_attack)
	{
		if(distance_to_object(target) < distance_to_attack && target.y < y)
		{
			state = e_skeleton_state.attack;
		}
	}
	else if(state == e_skeleton_state.attack)
	{
		var axis = (target.x > x) ? 1 : -1;
		var direction_to_player = point_direction(x, y, target.x, target.y);
		
		var direction_x = lengthdir_x(4, direction_to_player);
		var direction_y = lengthdir_y(4, direction_to_player);
		
		sprite_index = spr_skeleton_jump;
		image_speed = 1.2;
		image_xscale = axis;
		
		physics_apply_local_impulse(0, 0, direction_x, direction_y);
		
		can_attack = false;
		
		state = e_skeleton_state.sleep;
		alarm[0] = room_speed * 2;
	}
}
else
{
	target = global.local_player;
}