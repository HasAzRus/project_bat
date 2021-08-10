/// @description Pause Changed
var is_pause = global.game_mode.is_pause;

set_ui_element_active(is_pause, game_ui_elements[1]);
game_ui_elements[1].visible = is_pause;

set_ui_element_active(is_pause, game_ui_elements[2]);
game_ui_elements[2].visible = is_pause;