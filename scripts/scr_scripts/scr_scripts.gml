function activeWeapon(_weapon,_ammo,_cooldown,_reload,_capacity,_spread,_pellets,_spin,_damage,_speed,_falloff,_lifetime,_type,_tier)
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
		WFtype = _type;
		WFtier = _tier;
	}
}

function explosion(_x,_y,_type,_damage)
{
	if _type = 0 object_set_sprite(obj_explosion,spr_explosion_large);
	
	instance_create_layer(_x,_y,"Weapons",obj_explosion);
	
	with obj_explosion
	{
		damage = _damage;
		type = _type;
	}
}

function ammo_drop(_x,_y,_quantity,_rarity,_special)
{
	repeat(_quantity)
	{
		instance_create_layer(_x,_y,"enemys",obj_ammoDrop);
	}
	with obj_dev
	{
		rarity = _rarity;
		special = _special;
	}
}
/*
function ammo_add(_type,_quantity)
{
	with obj_menu_main
*/
//Break
function healthbar(_x,_y,_health,_healthMax)
{
	if _health != _healthMax && _health != 0
	{
		draw_sprite(spr_healthBar,(13*_health)/_healthMax,_x,_y);
	}
}

