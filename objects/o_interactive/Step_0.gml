/// @description Interactive Update
var player = global.local_player;
selected = (collision_circle(x, y, 15, o_player, false, true) || used) && player.can_interaction;