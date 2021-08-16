/// @description Box Open
var player = global.local_player;
	
if(purple_gems > 0)
{
	player.gems += purple_gems;
		
	purple_gem_collected_message = instance_create_layer(x - 6, y - 8, "Instances", o_gem_collected_message);
	purple_gem_collected_message.count = purple_gems;
}
	
if(red_gems > 0)
{
	player.red_gems += red_gems;
		
	red_gem_collected_message = instance_create_layer(x + 6, y - 8, "Instances", o_red_gem_collected_message);
	red_gem_collected_message.count = red_gems;
}
	
with(player)
{
	event_user(3);
}