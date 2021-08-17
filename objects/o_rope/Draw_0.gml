/// @description Draw
//draw_self();

var last_draw_rope = self;

for(var i = 0; i < array_length(rope_elements); i++)
{
	var rope = rope_elements[i];
	var direction_to_rope = point_direction(last_draw_rope.x, last_draw_rope.y, rope.x, rope.y);
	
	draw_sprite_ext(rope_element_sprite, 0, last_draw_rope.x, last_draw_rope.y, 1, 1, direction_to_rope, c_white, 1);
	
	last_draw_rope = rope;
}