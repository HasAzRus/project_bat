/// @description On Interaction
event_inherited();

var player = instance_find(o_player, 0);

joint_to_player = physics_joint_distance_create(player, self, player.x, player.y, player.x, player.y - 3, false);