if image_xscale < .75
{
	image_xscale += .25
}

image_yscale = image_xscale;

if point_distance(x,y,obj_dude_1.x,obj_dude_1.y) >= 256
{
	instance_destroy();
}
