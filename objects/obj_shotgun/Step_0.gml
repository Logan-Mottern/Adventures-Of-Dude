//Angle

y = obj_dude_1.y - 1;

if obj_dude_1.image_index = 0 or obj_dude_1.image_index = 1
{
	x = obj_dude_1.x - 4;
	image_index = 0
	image_angle = obj_dude_1.direction;
}

if obj_dude_1.image_index = 2 or obj_dude_1.image_index = 3
{
	x = obj_dude_1.x + 4;
	image_index = 1
	image_angle = obj_dude_1.direction + 180;
}

//Shooting

if (mouse_check_button(mb_left)) && (cooldownShotgun < 1) && (obj_dude_1.weapon = 1)
{
	instance_create_layer(x, y, "Enemys", obj_bullet_low);
	instance_create_layer(x, y, "Enemys", obj_bullet_low);
	instance_create_layer(x, y, "Enemys", obj_bullet_low);
	cooldownShotgun = 30;
}
cooldownShotgun = cooldownShotgun - 1;

//Weapon Remove

if obj_dude_1.weapon != 1
{
instance_destroy();
}



