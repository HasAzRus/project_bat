/// @description Draw End
surface_set_target(surf);

draw_rectangle_color(0, 0, camera_width, camera_height, ambient_color, ambient_color, ambient_color, ambient_color, false);
draw_set_alpha(1 - ambient_lightness);

with(o_light)
{
	draw_light(sprite_index, x - other.camera_x, y - other.camera_y, image_xscale, image_yscale, color, light_intensity, saturation);
}

gpu_set_blendmode(bm_normal);

surface_reset_target();

draw_surface(surf, camera_x, camera_y);