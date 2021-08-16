/// @description On Interaction
event_inherited();

var player = instance_find(o_player, 0);

var dir = point_direction(player.x, player.y, x, y);

var ax = lengthdir_x(1, dir);
var ay = lengthdir_y(1, dir);

joint_to_player = physics_joint_distance_create(player, self, player.x, player.y - 4, player.x + ax, player.y + ay, true);