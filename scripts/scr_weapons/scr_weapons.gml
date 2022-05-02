// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function activeWeapon(_weapon,_ammo,_number,_cooldown,_reload,_capacity,_spread,_pellets)
{
	if instance_exists(obj_weapon)
	{
		instance_destroy();
	}

	object_set_sprite(obj_weapon,_weapon);
	
	instance_create_layer(obj_dude_1.x,obj_dude_1.y,"layer",obj_weapon);
	
	with obj_weapon
	{
		WFnumber = _number;
		WFcooldown = _cooldown;
		WFreload = _reload;
		WFcapacity = _capacity;
		WFpellets = _pellets;
		WFspread = _spread;
		WFammo = _ammo;
	}
}

