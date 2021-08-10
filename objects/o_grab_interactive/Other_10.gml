/// @description On Interaction
event_inherited();

var player = instance_find(o_player, 0);

player.is_grabbing = true;
player.grab_interactive = self;

used = true;