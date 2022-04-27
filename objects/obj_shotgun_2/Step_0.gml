//Angle

y = obj_dude_1.y - 1;

if obj_dude_1.image_index = 0 or obj_dude_1.image_index = 1
{
	x = obj_dude_1.x - 4;
	image_index = 0
	if cooldown <= 10
	{
	image_angle = obj_dude_1.direction;
	}
}

if obj_dude_1.image_index = 2 or obj_dude_1.image_index = 3
{
	x = obj_dude_1.x + 4;
	image_index = 1
	if cooldown <= 10
	{
		image_angle = obj_dude_1.direction + 180;
	}
}

//Shooting

if (mouse_check_button(mb_left)) && (cooldown < 1) && (obj_dude_1.weapon = 1) && ammo != 0 && reload <= 0
{
	obj_dude_1.spread = 12
	instance_create_layer(x, y, "Enemys", obj_bullet_low);
	instance_create_layer(x, y, "Enemys", obj_bullet_low);
	instance_create_layer(x, y, "Enemys", obj_bullet_low);
	cooldown = 30;
	ammo -= 1
}
cooldown = cooldown - 1;

//Cooldown

if cooldown > 10 && ammo != 0
{
	image_angle = image_angle + 18
}

//Weapon Remove

if obj_dude_1.weapon != 1
{
instance_destroy();
}

//Reload

if ammo = 0
{
	reload += 1;
	if reload = 90
	{
		ammo = 3;
		reload = 0;
	}
}







