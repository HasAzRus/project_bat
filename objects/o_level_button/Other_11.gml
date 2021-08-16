/// @description Click
var loaded_level = global.levels.lvls[level_index - 1];
global.levels.current_level_index = level_index - 1;

transition_room_goto(loaded_level);