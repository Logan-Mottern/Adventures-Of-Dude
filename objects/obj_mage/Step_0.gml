if point_distance(obj_dude_1.x,obj_dude_1.y,x,y) < 216
{
	direction = point_direction(obj_dude_1.x,obj_dude_1.y,x,y);
	cooldown -= 1;
	if cooldown <= 0
	{
		instance_create_layer(x,y,layer,obj_magic);
			cooldown = 180;
	}
}

if (direction > 90) && (direction < 270)
{
	image_xscale = 1
	left = false;
}
else
{
	image_xscale = -1
	left = true;
}
