/// @description Collision By Killzone
if(other.used)
{
	return;
}

event_user(1);

with(other)
{
	event_user(0);
}