//Angle

y = (obj_dude_1.y) - 0.5;

if obj_dude_1.left = false
{
	x = obj_dude_1.x - 3;
	image_xscale = 1
	if cooldown <= 10
	{
		image_angle = obj_dude_1.direction;
	}
}

if obj_dude_1.left = true
{
	x = obj_dude_1.x + 3;
	image_xscale = -1
	if cooldown <= 10
	{
		image_angle = obj_dude_1.direction + 180;
	}
}
//List of ammo types and associated type Values
	if ammo = 0 //Light Standerd
	{
		if cycle = 0 
		{
			//Normal
		}
		if cycle = 1 
		{
			//Flame
		}
	}
	if ammo = 1 //Shotgun
	{
		if cycle = 0 
		{
			//Normal
		}
		if cycle = 1 
		{
			//Flame
		}
		if cycle = 2 
		{
			//Slug
		}
	}
	if ammo = 2 //Energy
	{
		if cycle = 0 
		{
			//Normal
		}
	}
	if ammo = 3 //Elemental
	{
		if cycle = 0 
		{
			//Normal
		}
	}
	if ammo = 4 //Light Explosive
	{
		if cycle = 0 
		{
			//Normal
		}
		if cycle = 1 
		{
			//Fragment
		}
	}
	if ammo = 5 //Heavy Explosive
	{
		if cycle = 0 
		{
			//Normal
		}
		if cycle = 1 
		{
			//Fragment
		}
		if cycle = 2
		{
			//Flame
		}
	}
//Shooting

if (mouse_check_button(mb_left)) && (cooldown <= 0) && ammo != 0 && reload <= 0 && burst = 0
{
	//Type Affects
	if WFtype = 0
	{
		repeat (WFpellets)
		{
			object_set_sprite(obj_bullet,WFammo)
			instance_create_layer(x, y, "Weapons", obj_bullet);
		}
		
		if random_range(0,1) = 0
		{
			audio_play_sound(aud_weapon_fire_1,0,0);
		}
		else
		{
			audio_play_sound(aud_weapon_fire_2,0,0);
		}
		ammo -= 1;
	}
	
	if WFtype = 1
	{
		burst = WFpellets;
	}
	
	cooldown = WFcooldown;
}
cooldown = cooldown - 1;

//Burst
if burst > 0 
{
	if burstDelay = 0
	{
		object_set_sprite(obj_bullet,WFammo)
		instance_create_layer(x, y, "Weapons", obj_bullet);
		burst -= 1;
		ammo -= 1;
		burstDelay = 5;
		
		if random_range(0,1) = 0
		{
			audio_play_sound(aud_weapon_fire_1,0,0);
		}
		else
		{
			audio_play_sound(aud_weapon_fire_2,0,0);
		}
	}
	else
	{
	burstDelay -= 1;
	}
}
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


