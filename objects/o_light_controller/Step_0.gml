/// @description Update
camera_x = camera_get_view_x(camera);
camera_y = camera_get_view_y(camera);

camera_width = camera_get_view_width(camera);
camera_height = camera_get_view_height(camera);

if(!surface_exists(surf))
{
	surf = surface_create(camera_width, camera_height);
}