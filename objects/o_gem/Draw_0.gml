/// @description Draw
shader_set(shd_bloom);

shader_set_uniform_f(intensity, 0.5);

draw_self();

shader_reset();

var sin_by_time = sin(current_time / 1000);

draw_sprite_ext(spr_flare, 0, x, y, 1 + sin_by_time * 0.1, 1 + sin_by_time * 0.1, 0, flare_color, sin_by_time * 2);