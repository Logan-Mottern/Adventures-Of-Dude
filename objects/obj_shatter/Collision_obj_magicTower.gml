if obj_weapon.WFtype = 0 or obj_weapon.WFtype = 1
{
	with (other)
	{
		hp = hp - obj_weapon.WFvar2;
		justHit = true;
	}
	instance_destroy();
}

