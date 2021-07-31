/// @description Change Direction
dir = irandom(360);
	
var px = x + lengthdir_x(fly_default_speed, dir);
var py = y + lengthdir_y(fly_default_speed, dir);

alarm[0] = room_speed;