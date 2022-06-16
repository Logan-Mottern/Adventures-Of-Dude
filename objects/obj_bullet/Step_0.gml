if image_xscale < .75
{
	image_xscale += .25
}

image_yscale = image_xscale;

if point_distance(x,y,obj_dude_1.x,obj_dude_1.y) >= 256
{
	instance_destroy();
}

//Bullet Shatter
if obj_weapon.bulletSplit = true && sprite_index != spr_bullet_shatter
{
	object_set_sprite(obj_shatter,spr_bullet_shatter);
	repeat (obj_weapon.WFvar1)
	{
		object_set_sprite(obj_shatter,spr_bullet_shatter);
		instance_create_layer(x,y,layer,obj_shatter)
	}
	obj_weapon.bulletSplit = false;
	instance_destroy();
}

