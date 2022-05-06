// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function activeWeapon(_weapon,_ammo,_cooldown,_reload,_capacity,_spread,_pellets,_spin,_damage,_speed,_falloff,_lifetime)
{
	if instance_exists(obj_weapon)
	{
		instance_destroy(obj_weapon);
	}

	object_set_sprite(obj_weapon,_weapon);
	
	instance_create_layer(x,y,"Weapons",obj_weapon);
	
	with obj_weapon
	{
		WFcooldown = _cooldown;
		WFreload = _reload;
		WFcapacity = _capacity;
		WFpellets = _pellets;
		WFspread = _spread;
		WFammo = _ammo;
		WFspin = _spin;
		WFdamage = _damage;
		WFspeed = _speed;
		WFfalloff = _falloff;
		WFlifetime = _lifetime;
	}
}

