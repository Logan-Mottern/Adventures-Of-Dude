if point_distance(obj_dude_1.x,obj_dude_1.y,x,y) < 108
{
	direction = point_direction(obj_dude_1.x,obj_dude_1.y,x,y);
	cooldown -= 1;
	if cooldown <= 0
	{
		instance_create_layer(obj_dude_1.x,obj_dude_1.y,layer,obj_magic);
			cooldown = 180;
	}
}
image_index = step + (2 * mageType);
