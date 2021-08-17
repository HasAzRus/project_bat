/// @description Draw GUI
var is_pause = global.game_mode.is_pause;

var view_width = view_wport[0];
var view_height = view_hport[0];

var vcamera_width_half = view_width / 2;

var vcamera_width_half_left_center = vcamera_width_half / 2;
var vcamera_width_half_right_center = vcamera_width_half + vcamera_width_half / 2;

//Game

if(is_pause)
{
	draw_set_font(fnt_hint);
	
	draw_set_halign(fa_middle);
	draw_set_valign(fa_center);
	
	draw_set_color(c_white);
	
	draw_text(view_width / 2, view_height / 2, "pause");
}

//Gameplay

var game = global.game_mode;
var game_conditions = game.game_conditions;

if(array_length(game_conditions) != 0)
{
	var slot_x = 60;
	var slot_y = 60;

	for(var i = 0; i < array_length(game_conditions); i++)
	{
		var indicator_index = (game_conditions[i].state == e_condition_state.none) ? 0 : ((game_conditions[i].state == e_condition_state.done) ? 1 : 2);
		var alpha = (game_conditions[i].state != e_condition_state.none) ? 1 : 0.4;
		
		draw_sprite_ext(spr_condition_state, indicator_index, slot_x, 0, 5, 5, 0, c_white, 1);
		
		draw_sprite_ext(game_conditions[i].ui_sprite, 0, slot_x, slot_y, 5, 5, 0, c_white, alpha);
		draw_sprite_ext(spr_condition_indicator, indicator_index, slot_x, slot_y + 60, 5, 5, 0, c_white, 1);
	
		slot_x += 100;
	}
}

//PLAYER

var player = global.local_player;

if(player.control_to_player && !player.died)
{
	draw_sprite_ext(spr_arrow_left, player.left_button_clicked, vcamera_width_half_left_center - vcamera_width_half_left_center / 2, view_height - 120, 15, 15, 0, c_white, 0.5);
	draw_sprite_ext(spr_arrow_right, player.right_button_clicked, vcamera_width_half_left_center + vcamera_width_half_left_center / 2, view_height - 120, 15, 15, 0, c_white, 0.5);

	if(player.can_interaction)
	{
		draw_sprite_ext(spr_interact, player.interact_button_clicked, vcamera_width_half_right_center + 100, view_height - 120, 15, 15, 0, c_white, 0.5);
	}
}

draw_sprite_ext(spr_gem, 0, vcamera_width_half - 30, 40, 5, 5, 0, c_white, 1);

draw_sprite_ext(spr_red_gem, 0, vcamera_width_half + 50, 40, 5, 5, 0, c_white, 1);

draw_set_font(fnt_hint);
draw_set_halign(fa_left);

draw_set_color(c_white);

draw_text_transformed(vcamera_width_half - 15, 40, "x" + string(player.gems), 0.7, 0.7, 0);
draw_text_transformed(vcamera_width_half + 65, 40, "x" + string(player.red_gems), 0.7, 0.7, 0);

if(game.alarm[0] != -1)
{
	draw_sprite_ext(spr_clock, 0, vcamera_width_half - 26, 78, 3, 3, 0, c_white, 1);
	
	var normalized_time = (game.alarm[0] / 60) / game.max_timer_seconds;
	var time_text_color = (normalized_time > 0.5) ? c_white : ((normalized_time > 0.25) ? c_yellow : c_red);
	
	//show_debug_message("normalized time" + string(normalized_time));
	
	draw_text_transformed_color(vcamera_width_half, 80, game.alarm[0] / 60, 0.7, 0.7, 0, time_text_color, time_text_color, time_text_color, time_text_color, 1);
}

//if(start_black_screen_is_active)
//{
//	draw_set_alpha(start_black_screen_alpha);
//	draw_rectangle_color(0, 0, view_width, view_height, c_black, c_black, c_black, c_black, false);
//}