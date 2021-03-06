//Angle

y = (obj_dude_1.y) - 7;

if obj_dude_1.left = false
{
	x = obj_dude_1.x - 4;
	image_xscale = 1
	if cooldown <= 10
	{
		image_angle = point_direction(x,y,mouse_x,mouse_y);
	}
}

if obj_dude_1.left = true
{
	x = obj_dude_1.x + 4;
	image_xscale = -1
	if cooldown <= 10
	{
		image_angle = point_direction(x,y,mouse_x,mouse_y) + 180;
	}
}


//Ammo System

	//Define the bullet
	if WFammo = "ammo_St_N"
	{
		object_set_sprite(obj_bullet,spr_bullet);
		var _total = obj_menu_main.inv.ammo.St.norm
	}
	if WFammo = "ammo_Sh_N"
	{
		object_set_sprite(obj_bullet,spr_bullet);
		var _total = obj_menu_main.inv.ammo.Sh.norm
	}
	if WFammo = "ammo_Sh_N_H"
	{
		object_set_sprite(obj_bullet,spr_bullet);
		var _total = obj_menu_main.inv.ammo.Sh.norm
	}
	if WFammo = "ammo_En_N"
	{
		object_set_sprite(obj_bullet,spr_bullet_E);
		var _total = obj_menu_main.inv.ammo.En.norm
	}
	if WFammo = "ammo_En_N_H"
	{
		object_set_sprite(obj_bullet,spr_bullet_E_H);
		var _total = obj_menu_main.inv.ammo.En.norm
	}
	if WFammo = "ammo_He_N"
	{
		object_set_sprite(obj_bullet,spr_bullet_explo_1);
		var _total = obj_menu_main.inv.ammo.He.norm
	}
	if WFammo = "ammo_He_N_H"
	{
		object_set_sprite(obj_bullet,spr_rocket);
		var _total = obj_menu_main.inv.ammo.He.norm
	}
	if WFammo = "ammo_Pl_N"
	{
		object_set_sprite(obj_bullet,spr_bullet_E);
		var _total = obj_menu_main.inv.ammo.Pl.norm
	}
	if WFammo = "ammo_god"
	{
		object_set_sprite(obj_bullet,spr_darkness);
		var _total = obj_menu_main.inv.ammo.St.norm
	}

//Shooting
if (mouse_check_button(mb_left)) && (cooldown <= 0) && ammo != 0 && reload <= 0 && shots = 0
{
	shots = WFburst;
}
if WFtype = 1
{
	if (mouse_check_button(mb_right)) && instance_exists(obj_bullet)
	{
		bulletSplit = true;
	}
}

	//Type Affects
if shots > 0 && delay <= 0
{
	delay = WFburstTime;
	shots -= 1
	
	if WFtype = 0 or WFtype = 1 or WFtype = 3 or WFtype = 4
	{
		repeat (WFpellets)
		{
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
	if WFtype = -1
	{
		instance_destroy(obj_blue_slime);
		instance_destroy(obj_magicTower);
		audio_play_sound(aud_weapon_click,0,0);
	}
	cooldown = WFcooldown;
}
cooldown = cooldown - 1;
delay -= 1;

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

if ammo = 0 && _total >= WFcapacity
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
		
		//Subtract the ammo from the corret variable
		if WFammo = "ammo_St_N" obj_menu_main.inv.ammo.St.norm -= WFcapacity;
		if WFammo = "ammo_Sh_N" obj_menu_main.inv.ammo.Sh.norm -= WFcapacity;
		if WFammo = "ammo_En_N" obj_menu_main.inv.ammo.En.norm -= WFcapacity;
		if WFammo = "ammo_En_N_H" obj_menu_main.inv.ammo.En.norm -= WFcapacity;
		if WFammo = "ammo_He_N" obj_menu_main.inv.ammo.He.norm -= WFcapacity;
	}
}


