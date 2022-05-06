 //Movement
if objM_backpack.inMenu = false
{
	if (keyboard_check(ord("S"))) 
	{
		y += 1;
		//image_index = facing + walkCycle;
	}	

	if (keyboard_check(ord("W"))) 
	{
		y += -1;
		//image_index = facing + walkCycle;
	}

	if (keyboard_check(ord("D")))
	{
		x += 1;
		//image_index = facing + walkCycle;
	}

	if (keyboard_check(ord("A"))) 
	{
		x += -1;
		//image_index = facing + walkCycle;
	}
}

// Facing

image_index = facing + walkCycle;

if (direction > 90) && (direction < 270)
{
	facing = 0
}
else
{
	facing = 2
}

// Walk Cycle

if (keyboard_check(ord("A"))) or (keyboard_check(ord("D"))) or (keyboard_check(ord("W"))) or (keyboard_check(ord("S")))
{
walkCycleTimer = walkCycleTimer - 1;
}

if (walkCycleTimer = 0) && (walkCycle = 0)
{
	walkCycle = 1;
	walkCycleTimer = walkCycleSpeed;
}

if (walkCycleTimer = 0) && (walkCycle = 1)
{
	walkCycle = 0;
	walkCycleTimer = walkCycleSpeed;
}

if objM_backpack.isMovingToSurf = true
{
		obj_dude_1.x = objT_cave.x;
		obj_dude_1.y = objT_cave.y + 20;
		objM_backpack.isMovingToSurf = false;
}

// Attack

//activeWeapon(_weapon,_ammo,_number,_cooldown,_reload,_capacity,_spread,_pellets,_spin)

direction = point_direction(x,y,mouse_x,mouse_y);

if (keyboard_check(ord("1")))
{
	activeWeapon(spr_automatic_1,spr_bullet_1,5,90,8,12,1,49,1,5,0,0)
}

if (keyboard_check(ord("2")))
{
	activeWeapon(spr_shotgun_1,spr_bullet_1,0,90,1,18,5,6,1,5,0,0);
}

if (keyboard_check(ord("3")))
{
	activeWeapon(spr_pistol_1,spr_bullet_1,15,90,2,6,1,6,1,4,0,0);
}

if (keyboard_check(ord("4")))
{
	activeWeapon(spr_automatic_2,spr_bullet_2,5,90,20,6,1,16,1,5,0,0);
}

if (keyboard_check(ord("5")))
{
	activeWeapon(	spr_elemental_2	,	spr_flame	,	1	,	180	,	90	,	6	,	1	,	15	,	1	,	1.5	,	0.05	,	900	);
}

if (keyboard_check(ord("6")))
{
	activeWeapon(	spr_energy_2	,	spr_bullet_2E	,	3	,	90	,	30	,	6	,	1	,	2	,	0.5	,	4	,	0	,	0	);
}

if (keyboard_check(ord("7")))
{
	activeWeapon(spr_dude_1,spr_dude_1,0,90,360,180,360,1,5,2,0,0);
}
//activeWeapon(_weapon,_ammo,_cooldown,_reload,_capacity,_spread,_pellets,_spin)

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
	image_index = image_index + 4;
	imageCycleHit = 5;
	justHit = false;
	
}

if imageCycleHit != 0
{
	imageCycleHit = imageCycleHit - 1;
}
