/// @description On Interaction
event_inherited();

var player = instance_find(o_player, 0);

var dir = point_direction(x, y, player.x, player.y);

var ax = lengthdir_x((sprite_width * image_xscale) / 2, dir);
var ay = lengthdir_y((sprite_height * image_yscale) / 2, dir);

joint_to_player = physics_joint_distance_create(player, self, player.x, player.y - 4, x + ax, y + ay, true);