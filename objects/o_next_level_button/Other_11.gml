/// @description Click
var loaded_level_index = global.levels.current_level_index;
var can_goto = loaded_level_index + 1 < array_length(global.levels.lvls);

if(can_goto)
{
	var loaded_level = global.levels.lvls[loaded_level_index + 1];
	
	transition_room_goto(loaded_level);
}
else
{
	transition_room_goto(r_level_menu);
}