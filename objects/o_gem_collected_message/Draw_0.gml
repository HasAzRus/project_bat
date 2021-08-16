/// @description Draw
draw_self();

draw_set_font(fnt_hint);
draw_set_halign(fa_right);
draw_text_transformed(x - 4, y, "+" + string(count), 0.1, 0.1, 0);