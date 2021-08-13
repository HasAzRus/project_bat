function draw_light(light_sprite, light_x, light_y, light_scale_x, light_scale_y, light_color, light_intensity, light_saturation)
{
	gpu_set_blendmode(bm_subtract);
	draw_sprite_ext(light_sprite, 0, light_x, light_y, light_scale_x, light_scale_y, 0, c_white, light_intensity);
	gpu_set_blendmode(bm_add);
	draw_sprite_ext(light_sprite, 0, light_x, light_y, light_scale_x, light_scale_y, 0, light_color, light_saturation);
}