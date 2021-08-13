/// @description Collision By Winzone
control_to_player = false;

with(global.ui)
{
	event_user(3);
}

with(global.game_mode)
{
	event_user(1);
}

global.game_mode.is_won = true;