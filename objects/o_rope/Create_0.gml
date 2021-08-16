/// @description Rope Initializing
rope_elements = array_create(rope_length);

var last_rope_element = self;

for(var i = 0; i < array_length(rope_elements); i++)
{
	rope_element = instance_create_layer(last_rope_element.x, last_rope_element.y + 8, "Instances", o_rope_element);
	
	rope_elements[i] = rope_element;
	
	physics_joint_rope_create(last_rope_element, rope_element, last_rope_element.x, last_rope_element.y, rope_element.x, rope_element.y, 8, true);
	
	last_rope_element = rope_element;
}