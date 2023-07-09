/// @description Draw

draw_self();

draw_set_font(fnt_hint);

draw_set_halign(fa_middle);
draw_set_valign(fa_center);

draw_set_color(c_white);
draw_text_transformed(x, y - 1, level_index, image_xscale / 12, image_yscale / 12, 0);