/// @description Draw
draw_self();

var sin_by_time = sin(current_time / 1000);

draw_sprite_ext(spr_flare, 0, x, y, 1 + sin_by_time * 0.1, 1 + sin_by_time * 0.1, 0, flare_color, sin_by_time * 2);
