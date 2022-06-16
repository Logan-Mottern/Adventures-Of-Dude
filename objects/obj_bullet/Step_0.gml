if image_xscale < .75
{
	image_xscale += .25
}

image_yscale = image_xscale;

if point_distance(x,y,obj_dude_1.x,obj_dude_1.y) >= 256 && obj_weapon.WFammo != "ammo_god"
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
if obj_weapon.WFtype = 3
{
	direction = point_direction(obj_weapon.x,obj_weapon.y,mouse_x,mouse_y);
	image_angle = direction;
}

