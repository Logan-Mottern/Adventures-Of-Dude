//Angle

y = obj_dude_1.y - 1;

if obj_dude_1.image_index = 0 or obj_dude_1.image_index = 1
{
	x = obj_dude_1.x - 4;
	image_index = 0
	if cooldown <= 5
	{
	image_angle = obj_dude_1.direction;
	}
}

if obj_dude_1.image_index = 2 or obj_dude_1.image_index = 3
{
	x = obj_dude_1.x + 4;
	image_index = 1
	if cooldown <= 5
	{
		image_angle = obj_dude_1.direction + 180;
	}
}

//Shooting

if (mouse_check_button(mb_left)) && (cooldown <= 0) && (obj_dude_1.weapon = 2)
{
	obj_dude_1.spread = 4
	instance_create_layer(x, y, "Enemys", obj_bullet_low);
	cooldown = 20;
}
cooldown = cooldown - 1;
//Reload

if cooldown > 5
{
	image_angle = image_angle + 36
}

//Weapon Remove

if obj_dude_1.weapon != 2
{
instance_destroy();
}
