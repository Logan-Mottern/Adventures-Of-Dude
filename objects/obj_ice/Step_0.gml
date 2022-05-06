if image_xscale != .5
{
	image_xscale += .01
	image_xscale += .01
}
else 
{
	canDamage = true;
	timer += 1;
}

if timer = 900
{
	instance_destroy();
}


