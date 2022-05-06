//Angle

y = (obj_dude_1.y) - 1;

if obj_dude_1.image_index = 0 or obj_dude_1.image_index = 1
{
	x = obj_dude_1.x - 4;
	image_xscale = 0.5
	if cooldown <= 10
	{
		image_angle = obj_dude_1.direction;
	}
}

if obj_dude_1.image_index = 2 or obj_dude_1.image_index = 3
{
	x = obj_dude_1.x + 4;
	image_xscale = -0.5
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
		object_set_sprite(obj_bullet,WFammo)
		instance_create_layer(x, y, "Enemys", obj_bullet);
	}
	
	if random_range(0,1) = 0
	{
		audio_play_sound(aud_weapon_fire_1,0,0);
	}
	else
	{
		audio_play_sound(aud_weapon_fire_2,0,0);
	}
	
	cooldown = WFcooldown;
	ammo -= 1
}
cooldown = cooldown - 1;

//Cooldown

if cooldown > 0 && ammo != 0
{
	if WFspin = 0
	{
		image_angle = image_angle + (360/WFcooldown);
	}
	if WFspin >= 1
	{
		image_index = 1;
	}

}
if cooldown <= 0 && ammo != 0
{
	image_index = 0;
}
//Reload

if ammo = 0
{
	
	if reload = 0 
	{
		audio_play_sound(aud_weapon_click,0,0);
		image_index = 0;
		reloadAnimation = 0;
		reloadAnimationTimer = 0;
	}
	reload += 1;
	
	if WFspin = 1
	{
		image_index = 1
	}
	
	if WFspin >= 2
	{
		reloadAnimationTimer += 1
		if reloadAnimationTimer >= WFreload/(WFspin-2)
		{
			reloadAnimationTimer = 0;
			reloadAnimation += 1;
		}
		image_index = reloadAnimation + 2;
	}
	
	if reload = WFreload
	{
		ammo = WFcapacity;
		reload = 0;
	}
}


