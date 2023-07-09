if(is_pause)
{
	if(keyboard_check_pressed(vk_anykey))
	{
		if(string_length(keyboard_string) < 10)
		{
			show_debug_message(keyboard_string);
			
			if(try_cheat(keyboard_string))
			{
				show_message("cheat enabled");
			};
		}
	}
}
else
{
	if(keyboard_string != "")
	{
		keyboard_string = "";
	}
}