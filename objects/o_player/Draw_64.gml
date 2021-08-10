/// @description Draw GUI

var vcamera = view_camera[0];

var view_width = view_wport[0];
var view_height = view_hport[0];

var vcamera_width_half = view_width / 2;

var vcamera_width_half_left_center = vcamera_width_half / 2;
var vcamera_width_half_right_center = vcamera_width_half + vcamera_width_half / 2;

draw_sprite_ext(spr_arrow_left, left_button_clicked, vcamera_width_half_left_center - vcamera_width_half_left_center / 2, view_height - 120, 15, 15, 0, c_white, 0.5);
draw_sprite_ext(spr_arrow_right, right_button_clicked, vcamera_width_half_left_center + vcamera_width_half_left_center / 2, view_height - 120, 15, 15, 0, c_white, 0.5);

if(can_interaction)
{
	draw_sprite_ext(spr_interact, interact_button_clicked, vcamera_width_half_right_center, view_height - 120, 15, 15, 0, c_white, 0.5);
}

draw_sprite_ext(spr_gem, 0, vcamera_width_half - 30, 40, 5, 5, 0, c_white, 1);

draw_sprite_ext(spr_red_gem, 0, vcamera_width_half + 50, 40, 5, 5, 0, c_white, 1);

draw_set_font(fnt_hint);
draw_set_halign(fa_left);

draw_set_color(c_white);

draw_text_transformed(vcamera_width_half - 15, 40, "x" + string(gems), 0.7, 0.7, 0);
draw_text_transformed(vcamera_width_half + 65, 40, "x" + string(red_gems), 0.7, 0.7, 0);