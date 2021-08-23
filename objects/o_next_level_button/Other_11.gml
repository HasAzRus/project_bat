/// @description Click
var loaded_level_index = global.levels.current_level_index + 1;
var can_goto = loaded_level_index < array_length(global.levels.lvls);

show_debug_message(loaded_level_index);

if(can_goto)
{
	var loaded_level = global.levels.lvls[loaded_level_index];
	
	global.levels.current_level_index = loaded_level_index;
	
	transition_room_goto(loaded_level);
}
else
{
	transition_room_goto(r_level_menu);
}