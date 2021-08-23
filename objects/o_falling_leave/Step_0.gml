y += 0.5;
x += dir * 0.1;

if(y > room_height)
{
	instance_destroy();
}