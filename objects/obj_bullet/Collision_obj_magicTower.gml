if obj_weapon.WFtype = 0 or obj_weapon.WFtype = 1
{
	with (other)
	{
		hp = hp - obj_weapon.WFdamage;
		justHit = true;
	}
	instance_destroy();
}

if obj_weapon.WFtype = 3
{
	explosion(x,x,0,0.5);
	instance_destroy();
}

if obj_weapon.WFtype = 4
{
	with (other)
	{
		hp = hp - obj_weapon.WFdamage;
		justHit = true;
	}
	instance_destroy();
	explosion(x,y,2,obj_weapon.WFvar2);
	instance_destroy();
}
