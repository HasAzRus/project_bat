pressed = collision_rectangle(x - coll_width / 2, y - coll_height + 6, x + coll_width / 2, y - 6, o_pickup, false, true) ||
			collision_rectangle(x - coll_width / 2, y - coll_height + 6, x + coll_width / 2, y - 6, o_player, false, true);

if(pressed)
{
	if(sprite_index != spr_button_pressed)
	{
		set_sprite_index_with_speed(spr_button_pressing, 1);
	}
}
else
{
	if(sprite_index != spr_button_released)
	{
		set_sprite_index_with_speed(spr_button_releasing, 1);
	}
}