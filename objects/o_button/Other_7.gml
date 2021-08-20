if(sprite_index == spr_button_pressing)
{
	sprite_index = spr_button_pressed;
	
	event_user(0);
}
else if(sprite_index == spr_button_releasing)
{
	sprite_index = spr_button_released;
	
	event_user(1);
}