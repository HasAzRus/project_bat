/// @description Pause Changed
var is_pause = global.game_mode.is_pause;

if(is_pause)
{
	control_to_player = false;
}
else
{
	alarm[0] = 10;
}