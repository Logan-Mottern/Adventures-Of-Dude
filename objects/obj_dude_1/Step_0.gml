//Movement and Collision from Shaun Spalding's Action RPG
keyLeft = keyboard_check(ord("A"));
keyRight = keyboard_check(ord("D"));
keyUp = keyboard_check(ord("W"));
keyDown = keyboard_check(ord("S"));

inputDirection = point_direction(0,0,keyRight-keyLeft,keyDown-keyUp);
inputMagnitude = (keyRight - keyLeft != 0) or (keyDown - keyUp != 0);

//Movement from Shaun Spalding

hSpeed = lengthdir_x(inputMagnitude * speedWalk, inputDirection);
vSpeed = lengthdir_y(inputMagnitude * speedWalk, inputDirection);

collision();

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

if (keyRight - keyLeft != 0) or (keyDown - keyUp != 0)
{
	walkCycle -= 1;
	if walkCycle = 0
	{
		if walk = 1
		{
			walk = 0;
		}
		else
		{
			walk = 1;
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

if (keyboard_check(ord("1")))
{
	if weaponRand1 = 0 activeWeapon(spr_st_single,"ammo_St_N",0,45,1,1,1,9,4,5,0,0,0,0,0,0);
	if weaponRand1 = 1 activeWeapon(spr_st_burst,"ammo_St_N",30,90,8,4,1,49,3,5,0,0,0,3,0.5,0);
	if weaponRand1 = 2 activeWeapon(spr_st_light,"ammo_St_N",5,90,20,5,1,16,2,5,0,0,0,0,0,0);
	if weaponRand1 = 3 activeWeapon(spr_st_heavy,"ammo_St_N",8,180,50,6,1,17,3,5,0,0,0,0,0,0);
	if weaponRand1 = 4 activeWeapon(spr_st_rifle,"ammo_St_N",45,90,4,0,1,1,5,7,0,0,0,0,0,0);
}

if (keyboard_check(ord("2")))
{
	if weaponRand2 = 0 activeWeapon(spr_sh_single,"ammo_Sh_N",0,45,1,3,5,5,1,5,0,0,0,0,0,0);
	if weaponRand2 = 1 activeWeapon(spr_sh_light,"ammo_Sh_N",20,135,6,3,8,44,0.5,5,0,0,0,0,0,0);
	if weaponRand2 = 2 activeWeapon(spr_sh_heavy,"ammo_Sh_N",30,90,3,5,3,1,1.5,5,0,0,0,0,0,0);

}

if (keyboard_check(ord("3")))
{
	if weaponRand3 = 0 activeWeapon(spr_en_burst,"ammo_En_N",5,90,30,4,1,26,1,7,0,0,1,5,1,0);
	if weaponRand3 = 1 activeWeapon(spr_en_light,"ammo_En_N",3,45,30,4,1,2,1,7,0,0,0,0,0,0);
}
/*
if (keyboard_check(ord("I"))) type = 1;
if (keyboard_check(ord("O"))) type = 2;
if (keyboard_check(ord("P"))) type = 3;
if (keyboard_check(ord("J"))) type = 4;
if (keyboard_check(ord("K"))) type = 5;
if (keyboard_check(ord("L"))) type = 6;
if (keyboard_check(ord(";"))) type = 7;

if (keyboard_check(ord("Q")))
{
	instance_destroy(obj_weapon);
}

//Weapon List
if type = 1
{
	//Single
	if (keyboard_check(ord("1"))) activeWeapon(spr_st_single,"ammo_St_N",0,45,1,1,1,9,4,5,0,0,0,0);
	//Burst
	if (keyboard_check(ord("2"))) activeWeapon(spr_st_burst,"ammo_St_N",30,90,8,4,2,49,3,5,0,0,1,0);
	//Auto L
	if (keyboard_check(ord("3"))) activeWeapon(spr_st_light,"ammo_St_N",5,90,20,5,1,16,2,5,0,0,0,0);
	//Auto H
	if (keyboard_check(ord("4"))) activeWeapon(spr_st_heavy,"ammo_St_N",8,180,50,6,1,17,3,5,0,0,0,0);
	//Rifle
	if (keyboard_check(ord("5"))) activeWeapon(spr_st_rifle,"ammo_St_N",45,90,4,0,1,1,5,7,0,0,0,0);
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
	if (keyboard_check(ord("1"))) activeWeapon(spr_he_single,"ammo_He_N",0,60,1,3,1,13,10,3,0.02,300,2,0);
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

if type = 7
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
*/
//Dev Tools

if (keyboard_check(ord("N"))) ammo_drop(x,y,10,1,1);
