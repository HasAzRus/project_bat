/// @description Room Start
layer_create(-100, ui_layer_name);

game_ui_elements[0] = instance_create_layer(0, 0, ui_layer_name, o_pause_button);
game_ui_elements[1] = instance_create_layer(0, 0, ui_layer_name, o_exit_to_menu_button);
game_ui_elements[2] = instance_create_layer(0, 0, ui_layer_name, o_sound_button);

set_ui_element_active(false, game_ui_elements[1]);
game_ui_elements[1].visible = false;

set_ui_element_active(false, game_ui_elements[2]);
game_ui_elements[2].visible = false;