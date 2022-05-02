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

direction = point_direction(x,y,mouse_x,mouse_y);

if (keyboard_check(ord("1"))) && (!instance_exists(obj_shotgun_2))
{
	instance_create_layer(x, y, layer, obj_shotgun_2);
	weapon = 1;
}

if (keyboard_check(ord("2"))) && (!instance_exists(obj_pistol_2))
{
	instance_create_layer(x, y, layer, obj_pistol_2);
	weapon = 2;
}

if (keyboard_check(ord("3")))
{
	weapon = 0;
}

if (keyboard_check(ord("9"))) && (!instance_exists(obj_handofgod))
{
	instance_create_layer(x, y, layer, obj_handofgod);
	weapon = 9;
}

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
