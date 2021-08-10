function camera_shake(amount, duration)
{
	var camera = instance_find(o_camera, 0);
	
	with(camera)
	{
		shake_enabled = true;
		
		alarm[0] = duration;
	}
}