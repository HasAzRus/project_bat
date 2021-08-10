/// @description Camera Update
if(target != noone)
{	
	x = target.x;
	y = target.y;
}

if(shake_enabled)
{
	var shake_direction = point_direction(x, y, x + irandom(10), y + irandom(10));
	
	shake_x = lerp(shake_x, lengthdir_x(2, shake_direction), 0.01);
	shake_y = lerp(shake_y, lengthdir_y(2, shake_direction), 0.01);
}
else
{
	shake_x = 0;
	shake_y = 0;
}

camera_set_view_pos(vcamera, x - vcamera_width_half + shake_x, y - vcamera_height_half + shake_y);