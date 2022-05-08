 //Movement

if (keyboard_check(ord("S"))) 
{
	y += 1.5;
	//image_index = facing + walkCycle;
}	

if (keyboard_check(ord("W"))) 
{
	y += -1.5;
	//image_index = facing + walkCycle;
}

if (keyboard_check(ord("D")))
{
	x += 1.5;
	//image_index = facing + walkCycle;
}

if (keyboard_check(ord("A"))) 
{
	x += -1.5;
	//image_index = facing + walkCycle;
}


// Facing

if (direction > 90) && (direction < 270)
{
	image_xscale = -1
	left = false;
}
else
{
	image_xscale = 1
	left = true;
}

// Walk Cycle

if instance_exists(obj_weapon) = true
{
	holding = 1;
}
else
{
	holding = 0;
}

if (keyboard_check(ord("A"))) or (keyboard_check(ord("D"))) or (keyboard_check(ord("W"))) or (keyboard_check(ord("S")))
{
	walkCycle -= 1;
	if walkCycle = 0
	{
		if walk = 1
		{
			walk = 0
		}
		else
		{
			walk = 1
		}
		walkCycle = 5;
	}
}
else
{
	walk = 0;
}

image_index = walk + (2*holding)

// Attack

direction = point_direction(x,y,mouse_x,mouse_y);

//Health

if justHit != false && justHitCooldown <= 0
{
	dudehp = dudehp - 1;
	justHitCooldown = 15;
}

if dudehp <= 0
{
	room_restart();
}

justHitCooldown -= 1

//Hit Detect

if justHit = true
{
	imageCycleHit = 5;
	justHit = false;
	
}

if imageCycleHit != 0
{
	imageCycleHit = imageCycleHit - 1;
}

//Weapons

if (keyboard_check(ord("8"))) tier = 1;
if (keyboard_check(ord("9"))) tier = 2;
if (keyboard_check(ord("0"))) tier = 3;

if (keyboard_check(ord("q")))
{
	instance_destroy(obj_weapon);
}

if tier = 1
{
	//Auto
	if (keyboard_check(ord("1")))
	{
		activeWeapon( spr_automatic_1 , spr_bullet_1 , 5 , 90 , 8 , 4 , 1 , 49 , 1 , 5 , 0 , 0 , 0 , 1 );
	}
	//Shot
	if (keyboard_check(ord("2")))
	{
		activeWeapon( spr_shotgun_1 , spr_bullet_1 , 15 , 90 , 1 , 18 , 5 , 6 , 1 , 5 , 0 , 0 , 0 , 1 );
	}
	//Pist
	if (keyboard_check(ord("3")))
	{
		activeWeapon( spr_pistol_1 , spr_bullet_1 , 5 , 60 , 2 , 6 , 1 , 6 , 2 , 5 , 0 , 0 , 0 , 1 );
	}
	//Rifl
	if (keyboard_check(ord("4")))
	{
		activeWeapon( spr_rifle_1 , spr_bullet_1 , 45 , 45 , 1 , 0 , 1 , 7 , 5 , 7 , 0 , 0 , 1 , 1 );
	}
	//Ener
	if (keyboard_check(ord("5")))
	{
		activeWeapon( spr_energy_1 , spr_bullet_1E , 5 , 90 , 15 , 8 , 1 , 4 , 0.75 , 4 , 0 , 0 , 5 , 1 );
	}
	//Elem
	if (keyboard_check(ord("6")))
	{
		activeWeapon( spr_elemental_1 , spr_water , 2 , 180 , 30 , 6 , 1 , 17 , 1 , 1.5 , 0.05 , 300 , 2 , 1 );
	}	
}

if tier = 2
{
	//Auto
	if (keyboard_check(ord("1")))
	{
		activeWeapon( spr_automatic_2 , spr_bullet_2 , 5 , 90 , 20 , 6 , 1 , 16 , 2 , 5 , 0 , 0 , 0 , 1 );
	}
	//Shot
	if (keyboard_check(ord("2")))
	{
		activeWeapon( spr_shotgun_2 , spr_bullet_2 , 30 , 90 , 3 , 12 , 3 , 0 , 2 , 5 , 0 , 0 , 0 , 1 );
	}		
	//Pist
	if (keyboard_check(ord("3")))
	{
		activeWeapon( spr_pistol_2 , spr_bullet_2 , 5 , 90 , 6 , 4 , 1 , 11 , 4 , 5 , 0 , 0 , 0 , 1 );
	}		
	//Rifl
	if (keyboard_check(ord("4")))
	{
		activeWeapon( spr_rifle_2 , spr_bullet_2 , 45 , 90 , 4 , 0 , 1 , 1 , 10 , 7 , 0 , 0 , 1 , 1 );
	}		
	//Ener
	if (keyboard_check(ord("5")))
	{
		activeWeapon( spr_energy_2 , spr_bullet_2E , 3 , 90 , 30 , 6 , 1 , 2 , 1.5 , 4 , 0 , 0 , 5 , 1 );
	}

	//Elem
	if (keyboard_check(ord("6")))
	{
		activeWeapon( spr_elemental_2 , spr_flame , 1 , 180 , 90 , 6 , 1 , 15 , 1 , 1.5 , 0.05 , 600 , 2 , 1 );
	}
}

if tier = 3
{
	//Auto
	if (keyboard_check(ord("1")))
	{
		activeWeapon( spr_automatic_3 , spr_bullet_3 , 8 , 180 , 50 , 6 , 1 , 17 , 3 , 5 , 0 , 0 , 0 , 1 );
	}
	//Shot
	if (keyboard_check(ord("2")))
	{
		activeWeapon( spr_shotgun_3 , spr_bullet_3 , 20 , 90 , 6 , 12 , 8 , 44 , 3 , 5 , 0 , 0 , 0 , 1 );
	}
	//Pist
	
	//Rifl
	
	//Ener
	
	//Elem
	
}

if (keyboard_check(ord("7")))
{
	activeWeapon(spr_dude_1,spr_dude_1,0,90,360,180,360,1,5,2,0,0,0,0);
}
