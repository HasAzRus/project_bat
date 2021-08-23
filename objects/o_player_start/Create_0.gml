/// @description Player Start
layer_create(-5000, "Gameplay");

instance_create_layer(0, 0, "Gameplay", o_game_mode);
instance_create_layer(x, y, "Instances", o_player);
instance_create_layer(x, y, "Gameplay", o_ui);