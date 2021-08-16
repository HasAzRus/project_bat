/// @description Initializing
max_width = display_get_width();
max_height = display_get_height();

if(os_type == os_android)
{
	view_wport[0] = max_width;
	view_hport[0] = max_height;
	
	surface_resize(application_surface, view_wport[0], view_hport[0]);
}