function game_over()
{
	control_to_player = false;
	died = true;

	phy_position_x = start_position_x;
	phy_position_y = start_position_y;

	phy_speed_x = 0;
	phy_speed_y = 0;

	visible = false;

	with(global.ui)
	{
		event_user(1);
	}

	var nodeath_condition = instance_find(o_nodeath_condition, 0);
	set_condition_state(e_condition_state.failed, nodeath_condition);
	
	var time_condition = instance_find(o_time_condition, 0);
	set_condition_state(e_condition_state.failed, time_condition);

	with(global.game_mode)
	{
		event_user(2);
	}
	
	stop_interaction();

	var body = instance_create_layer(x, y,"Instances", o_player_body);
	var body1 = instance_create_layer(x, y,"Instances", o_player_body1);
	var body2 = instance_create_layer(x, y,"Instances", o_player_body2);
	
	with(body)
	{
		physics_apply_local_impulse(0, 0, irandom_range(-2, 2), 0);
	}
	
	with(body1)
	{
		physics_apply_local_impulse(0, 0, irandom_range(-2, 2), 0);
	}
	
	with(body2)
	{
		physics_apply_local_impulse(0, 0, irandom_range(-2, 2), 0);
	}
	
	show_debug_message("Game is Overed");
	
	global.player_death_count += 1;
	
	if(global.player_death_count == 5)
	{
		GoogleMobileAds_ShowInterstitial();
		global.interLoading = true;
		
		GoogleMobileAds_LoadInterstitial();
		
		global.player_death_count = 0;
	}

}