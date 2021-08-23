if(!selected)
{
	dir += 2;

	if(dir >= 360)
	{
		dir = 0;
	}
}

var dx = lengthdir_x(2, dir);
var dy = lengthdir_y(2, dir);

layer_x(layer_name, dx);
layer_y(layer_name, dy);