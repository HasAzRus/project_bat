enabled = !enabled;

if(enabled)
{
	event_user(1);
	
	sprite_index = spr_lever_turn_on;
}
else
{
	event_user(2);
	
	sprite_index = spr_level_turn_off;
}