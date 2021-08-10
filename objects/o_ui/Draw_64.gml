/// @description Draw GUI
var is_pause = global.game_mode.is_pause;

var view_width = view_wport[0];
var view_height = view_hport[0];

if(is_pause)
{
	draw_set_font(fnt_hint);
	
	draw_set_halign(fa_middle);
	draw_set_valign(fa_center);
	
	draw_text(view_width / 2, view_height / 2, "pause");
}