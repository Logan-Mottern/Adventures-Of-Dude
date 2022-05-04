//Angle

y = (obj_dude_1.y) - 1;

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

if (mouse_check_button(mb_left)) && (cooldown <= 0) && ammo != 0 && reload <= 0
{
	repeat (WFpellets)
	{
		instance_create_layer(x, y, "Enemys", WFammo);
	}
	cooldown = WFcooldown;
	ammo -= 1
}
cooldown = cooldown - 1;

//Cooldown

if cooldown > 0 
{
	if WFspin = true
	{
		image_angle = image_angle + (360/WFcooldown);
	}
}

//Reload

if ammo = 0
{
	reload += 1;
	if reload = WFreload
	{
		ammo = WFcapacity;
		reload = 0;
	}
}
