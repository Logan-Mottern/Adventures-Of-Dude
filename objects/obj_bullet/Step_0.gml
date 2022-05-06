if image_xscale < .5
{
	image_xscale += .25
}

image_yscale = image_xscale;

if speed > 0.1
{
	speed -= obj_weapon.WFfalloff + random_range(-0.05,0.05);
}
else
{
	speed = 0;
}
if obj_weapon.WFlifetime != 0
{
	BFlife -= 1
	if BFlife = 0
	{
		instance_destroy();
	}
}
if obj_weapon.WFlifetime = 0 image_angle = direction;

