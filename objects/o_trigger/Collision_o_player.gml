if (receiver == noone)
{
	return;
}

with(receiver)
{
	event_user(0);
}

if(only_once)
{
	instance_destroy();
}