/// @description Collision By Player
if(joint == noone)
{
	var direction_to_player = other;

	joint = physics_joint_distance_create(self, other, x, y, x + lengthdir_x(1, direction_to_player), y + lengthdir_y(1, direction_to_player), true);
	alarm[0] = 25;
}