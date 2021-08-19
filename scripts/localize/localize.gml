function localize(localizable)
{
	var result = "";
	
	ini_open("localization.ini");
	
	if(global.localization == e_localization.english)
	{
		result = ini_read_string("english", localizable, "");
		
		show_debug_message("english localization");
	}
	else if(global.localization == e_localization.russian)
	{
		result = ini_read_string("russian", localizable, "");
		
		show_debug_message("russian localization");
	}
	else
	{
		show_debug_message("do not have a localizations");
	}
	
	ini_close();
	
	return result;
}