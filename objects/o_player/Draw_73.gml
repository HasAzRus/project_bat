/// @description Draw End
if(stamina_state == e_stamina_state.none)
{
	var ui_stamina = ((stamina * 16) / 100) - 1;
	draw_sprite(spr_stamina_bar, ui_stamina, x, y - 14);
}
