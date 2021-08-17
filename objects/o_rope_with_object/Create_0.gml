/// @description Create
event_inherited();

var last_rope = rope_elements[array_length(rope_elements) - 1];

var obj = instance_create_layer(last_rope.x, last_rope.y + 4, "Instances", rope_object);

physics_joint_rope_create(last_rope, obj, last_rope.x, last_rope.y, obj.x, obj.y, 6, true);