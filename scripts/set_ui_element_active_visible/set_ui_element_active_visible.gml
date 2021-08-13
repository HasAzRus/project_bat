function set_ui_element_active_visible(value, ui_element)
{
	set_ui_element_active(value, ui_element);
	ui_element.visible = value;
}