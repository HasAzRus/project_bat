/// @description Room Start
layer_create(-100, ui_layer_name);

game_ui_elements[0] = instance_create_layer(0, 0, ui_layer_name, o_pause_button);
game_ui_elements[1] = instance_create_layer(0, 0, ui_layer_name, o_exit_to_menu_button);
game_ui_elements[2] = instance_create_layer(0, 0, ui_layer_name, o_sound_button);
game_ui_elements[3] = instance_create_layer(0, 0, ui_layer_name, o_reload_button);
game_ui_elements[4] = instance_create_layer(0, 0, ui_layer_name, o_exit_to_menu_button3);
game_ui_elements[5] = instance_create_layer(0, 0, ui_layer_name, o_next_level_button);
game_ui_elements[6] = instance_create_layer(0, 0, ui_layer_name, o_reload_button2);

set_ui_element_active_visible(false, game_ui_elements[1]);

set_ui_element_active_visible(false, game_ui_elements[2]);

set_ui_element_active_visible(false, game_ui_elements[3]);

set_ui_element_active_visible(false, game_ui_elements[4]);

set_ui_element_active_visible(false, game_ui_elements[5]);

set_ui_element_active_visible(false, game_ui_elements[6]);

alarm[0] = room_speed * 2;