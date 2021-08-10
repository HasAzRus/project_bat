function set_ui_element_active(value, ui_element)
{
	ui_element.is_active = value;
	
	with(ui_element)
	{
		event_user(0);
	}
}