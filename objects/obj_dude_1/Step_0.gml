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

if justHitCooldown <= 0
{
	image_index = walk + (2*holding)
}
else
{
	image_index = walk + (2*holding) + 4
}
// Attack

direction = point_direction(x,y,mouse_x,mouse_y);

//Health

if justHit != false && justHitCooldown <= 0
{
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

if (keyboard_check(ord("I"))) type = 1;
if (keyboard_check(ord("O"))) type = 2;
if (keyboard_check(ord("P"))) type = 3;
if (keyboard_check(ord("J"))) type = 4;
if (keyboard_check(ord("K"))) type = 5;
if (keyboard_check(ord("L"))) type = 6;

if (keyboard_check(ord("q")))
{
	instance_destroy(obj_weapon);
}

//Weapon List
if type = 1
{
	//Single
	if (keyboard_check(ord("1"))) activeWeapon(spr_st_single,spr_bullet,0,45,1,1,1,9,5,5,0,0,0,0);
	//Burst
	if (keyboard_check(ord("2"))) activeWeapon(spr_st_burst,spr_bullet,30,90,8,4,2,49,3,5,0,0,1,0);
	//Auto L
	if (keyboard_check(ord("3"))) activeWeapon(spr_st_light,spr_bullet,5,90,20,5,1,16,2,5,0,0,0,0);
	//Auto H
	if (keyboard_check(ord("4"))) activeWeapon(spr_st_heavy,spr_bullet,8,180,50,6,1,17,3,5,0,0,0,0);
	//Rifle
	if (keyboard_check(ord("5"))) activeWeapon(spr_st_rifle,spr_bullet,45,90,4,0,1,1,5,7,0,0,0,0);
	//Inf
	if (keyboard_check(ord("6"))) activeWeapon();
}

if type = 2
{
	//Single
	if (keyboard_check(ord("1"))) activeWeapon();
	//Burst
	if (keyboard_check(ord("2"))) activeWeapon();
	//Auto L
	if (keyboard_check(ord("3"))) activeWeapon();
	//Auto H
	if (keyboard_check(ord("4"))) activeWeapon();
	//Rifle
	if (keyboard_check(ord("5"))) activeWeapon();
	//Inf
	if (keyboard_check(ord("6"))) activeWeapon();
}

if type = 3
{
	//Single
	if (keyboard_check(ord("1"))) activeWeapon();
	//Burst
	if (keyboard_check(ord("2"))) activeWeapon();
	//Auto L
	if (keyboard_check(ord("3"))) activeWeapon();
	//Auto H
	if (keyboard_check(ord("4"))) activeWeapon();
	//Rifle
	if (keyboard_check(ord("5"))) activeWeapon();
	//Inf
	if (keyboard_check(ord("6"))) activeWeapon();
}

if type = 4
{
	//Single
	if (keyboard_check(ord("1"))) activeWeapon();
	//Burst
	if (keyboard_check(ord("2"))) activeWeapon();
	//Auto L
	if (keyboard_check(ord("3"))) activeWeapon();
	//Auto H
	if (keyboard_check(ord("4"))) activeWeapon();
	//Rifle
	if (keyboard_check(ord("5"))) activeWeapon();
	//Inf
	if (keyboard_check(ord("6"))) activeWeapon();
}

if type = 5
{
	//Single
	if (keyboard_check(ord("1"))) activeWeapon();
	//Burst
	if (keyboard_check(ord("2"))) activeWeapon();
	//Auto L
	if (keyboard_check(ord("3"))) activeWeapon();
	//Auto H
	if (keyboard_check(ord("4"))) activeWeapon();
	//Rifle
	if (keyboard_check(ord("5"))) activeWeapon();
	//Inf
	if (keyboard_check(ord("6"))) activeWeapon();
}

if type = 6
{
	//Single
	if (keyboard_check(ord("1"))) activeWeapon();
	//Burst
	if (keyboard_check(ord("2"))) activeWeapon();
	//Auto L
	if (keyboard_check(ord("3"))) activeWeapon();
	//Auto H
	if (keyboard_check(ord("4"))) activeWeapon();
	//Rifle
	if (keyboard_check(ord("5"))) activeWeapon();
	//Inf
	if (keyboard_check(ord("6"))) activeWeapon();
	//Explo
	if (keyboard_check(ord("7"))) activeWeapon();
	//Elem
	if (keyboard_check(ord("8"))) activeWeapon();
	//Energy
	if (keyboard_check(ord("9"))) activeWeapon();
	//Shotgun
	if (keyboard_check(ord("0"))) activeWeapon();
}
if (keyboard_check(ord("G")))
{
	activeWeapon(spr_dude_1,spr_dude_1,0,90,360,180,360,1,5,2,0,0,0,0);
}
