function scale_relative(amount)
{
	var xscale = image_xscale;
	var yscale = image_yscale;
	
	image_xscale = xscale + amount;
	image_yscale = yscale + amount;
}