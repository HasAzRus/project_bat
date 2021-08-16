/// @description Interactive Update
var player = global.local_player;
selected = (collision_rectangle(x - sprite_width / 2 - selected_rectangle_border, y - sprite_height / 2 - selected_rectangle_border, x + sprite_width / 2 + selected_rectangle_border, y + sprite_height / 2 + selected_rectangle_border, o_player, false, true) || used) && player.can_interaction;