/// @description Click
var is_pause = global.game_mode.is_pause;

set_pause(!is_pause);

if(is_pause)
{
	image_index = 0;
}
else
{
	image_index = 1;
}