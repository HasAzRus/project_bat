/// @description Draw End
if(stamina_state == e_stamina_state.none)
{
	var ui_stamina = ((stamina * 16) / 100) - 1;
	draw_sprite(spr_stamina_bar, ui_stamina, x, y - 14);
}

//flag = phy_debug_render_shapes | phy_debug_render_coms | phy_debug_render_joints;
//physics_world_draw_debug(flag);