/// @description Animation End
if(sprite_index == spr_player_end_fly)
{
	set_sprite_index_with_speed(spr_player_stand, 0.3);
	
	phy_rotation = 0;
}
else if(sprite_index == spr_player_start_fly)
{
	set_sprite_index_with_speed(spr_player_fly, 1.5);
}