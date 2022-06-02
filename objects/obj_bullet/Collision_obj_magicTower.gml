if obj_weapon.WFtype = 0 or obj_weapon.WFtype = 1
{
	with (other)
	{
		hp = hp - obj_weapon.WFdamage;
		justHit = true;
	}
	instance_destroy();
}

if obj_weapon.WFtype = 2
{
	speed = 0;
}
