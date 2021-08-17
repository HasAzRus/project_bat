function try_cheat(cheat_code)
{
	var player = global.local_player;
	
	if(cheat_code == "mxstmn")
	{
		player.stamina = 1000000;
		
		return true;
	}
	else if(cheat_code == "gdmdenbld")
	{
		player.god_mode = true;
		
		return true;
	}
	else if(cheat_code == "crtstn")
	{
		instance_create_layer(player.x + player.image_xscale * 10, player.y, "Instances", o_stone);
		
		return true;
	}
	else if(cheat_code == "kll")
	{
		with(player)
		{
			game_over();
		}
		
		return true;
	}
	else if(cheat_code == "crttrp")
	{
		instance_create_layer(player.x + player.image_xscale * 20, player.y, "Instances", o_trap);
		
		return true;
	}
	
	return false;
}